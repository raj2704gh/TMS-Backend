const express = require('express');
const mysql = require('mysql2');
const dotenv = require('dotenv');
const db=require("../utils/db_con.JS")
const jwt = require('jsonwebtoken');
const db2=require("../UTILS/db_con2.js")
const s_query=require("../UTILS/function")
const {verifyToken}=require("../UTILS/middelware.js")
const bcrypt = require('bcryptjs');
const user_Details=require("../MODEL/user_Details.js")
const otp_Generator=require("otp-generator")
const node_Mailer = require('nodemailer');
const generate_Password = require('generate-password');
const user_Role=require("../MODEL/user_roles.js");
const task_Tbl = require('../MODEL/task_Tbl.js');

dotenv.config();

const router = express.Router();


router.post('/userLogin', async (req, res) => {
  const { email, password } = req.body;
  //await task_Tbl.destroy();
  console.log("lkjlkjlkj",req.body)
  

  try {
    if (email === undefined) return res.status(400).json({ error: 'Please fill in the email' });
    if (password === undefined) return res.status(400).json({ error: 'Please fill in the password' });
     
    const query = `select ud.*,cr.company_name from user_details  as ud
left join company_registration as cr
on ud.company_Id=cr.company_Id
where email_id=?`;
    const results = await queryAsync(query, email);
    
   // console.log("lkjlkjlkj",query,result)
    if (results.length == 0) {
      return res.status(401).json({ error: 'Invalid email or password' });
    }

    const storedHashedPassword = results[0].user_password;
  

    // Compare the provided password with the stored hashed password
    const passwordMatch = await bcrypt.compare(password, storedHashedPassword);

    
    if (!passwordMatch) {
      return res.status(401).json({ error: 'Invalid email or password' });
    }

    const userid = results[0].user_id;
    const role = results[0].role;

    //get role 
    

    const result=await user_Role.findOne({
      where:{user_id:userid}
    })
    
    const token = jwt.sign({ userid: userid, email: email,company_Id:results[0].company_Id,company_name:results[0].company_name}, process.env.JWT_SECRET, { expiresIn: '24h' });

    return res.status(200).json({ status: 1, message: 'Login successful!', token, userid, role,name:results[0].user_name ,company_Id:results[0].company_Id,company_Name:results[0].company_name,result});

  } catch (error) {
    console.error('MySQL query error:', error.error);
    console.log(error)
    return res.status(500).json({ error: 'Internal server errorerwer' });
  }
});

router.post('/userLogout',verifyToken, async (req, res) => {
    try {
        const token = req.headers.authorization; // Assuming the token is in the Authorization header
        
        // Blacklist the token in the database
        await queryAsync('INSERT INTO blacklisted_tokens (token) VALUES (?)', [token]);

        // Respond with success message
        res.status(200).json({ message: 'Logout successful' });
    } catch (error) {
        console.error('Logout error:', error);
        res.status(500).json({ error: 'Internal server errorwe11' });
    }             
});


router.post('/forgotPassword',verifyToken,async(req,res)=>{
  const { email } = req.body;
  try {

    if (!email) {
      return res.status(400).json({ error: 'Please provide your email' });
    }
    //const query = 'SELECT * FROM user_details WHERE email_id = ?';
    const user=await user_Details.findOne({
      where:{email_id:email}
    })
  
    if(!user){
      return res.status(404).json({ error: 'User not found with this email' });
    }

      // Generate OTP
    //const otp = otp_Generator.generate(6, { digits: false, alphabets: false, upperCase: false, specialChars: false });
    const otp=Math.floor(Math.random()*9999);
    
    const result=await user_Details.update({otp:otp},{
      where:{email_id:email}
    })
    //console.log("result:",result)




    // Send OTP to user's email
    const transporter = node_Mailer.createTransport({
      host: 'smtp.gmail.com',
      port: 465,
      secure: true,// true for 465, false for other ports
      auth: {
        user: process.env.EMAIL,
        pass: process.env.EMAIL_PASSWORD
      }
    })
    //console.log("user:",user)
   

    const mailOptions = {
      from: process.env.EMAIL,
      to: `"${req.user.email}"`,
      subject: 'Password Reset OTP',
      text: `Your OTP for password reset is ${otp}. This OTP is valid for 15 minutes.`
    };

    
    transporter.sendMail(mailOptions, (error, info) => {
      if (error) {
        console.error('Error sending email:', error);
        return res.status(500).json({ error: 'Internal server error' });
      }
      
      res.status(200).json({ message: 'OTP sent to your email address' });
    });

    

//return res.status(200).send(result)
  } catch (error) {
    return res.status(400).send({message:"error",err:error})
  }
})


router.post('/verifyToken', async (req, res) => {
  const { email, token } = req.body;

  try {
    if (!email || !token) {
      return res.status(400).json({ error: 'Please provide email and token' });
    }

    const user = await user_Details.findOne({
      where: { email_id: email,otp: token }
    });

    if (!user) {
      return res.status(404).json({ error: 'Invalid token or email' });
    }
   
    res.status(200).json({ message: 'Token verified successfully' });

  } catch (error) {
    console.error('Error in verifyToken:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});


router.post('/resetPassword',verifyToken, async (req, res) => {
  const { oldPassword,confirmPassword,newPassword } = req.body;

  try {
   
    if (!confirmPassword || !oldPassword || !newPassword) {
      return res.status(400).json({ error: 'Please provide email, OTP, and new password' });
    }
    if(newPassword!=confirmPassword){
      return res.status(400).json({ error: 'Please enter correct confirm pass word' });
    }

    const user = await user_Details.findOne({
      where: { email_id: req.user.email }
    });
    
    if (!user) {
      return res.status(404).json({ error: 'Invalid  email' });
    }
    const result=await bcrypt.compare(oldPassword,user.dataValues.user_password)

    if(result){
      await user.update({ password: newPassword, otp: null });
      res.status(200).json({ message: 'Password reset successful' });
    }else{
      res.status(400).json({ message: 'please enter correct old password' });
    }

    // Update the user's password
    

    

  } catch (error) {
    console.error('Error in resetPassword:', error);
    res.status(500).json({ error: 'Internal server errorssss' });
  }
});


// MySQL queries
function queryAsync(query, values) {                  
  return new Promise((resolve, reject) => {       
    db.query(query, values, (error, results) => {       
      if (error) {       
               
        reject(error);       
      } else {       
        
        resolve(results);
      }
    });
  });
}



module.exports = router;
