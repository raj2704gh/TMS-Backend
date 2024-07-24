
const {s_query}=require("../UTILS/function")
const source=require("../Model/source.JS");
const user_Details=require("../MODEL/user_Details")
const user_Roles= require("../MODEL/user_roles")

const bcrypt = require('bcryptjs');


exports.admin_Add_User = async (req, res) => {
  
  const {
      user_name,
      phone_number,
      email_id,
      department,
      user_password,
      formattedPermissions // Assuming formattedPermissions object contains role permissions
  } = req.body;
  const company_Id = req.user.company_Id;


  try {
      // Check if email already exists
      const emailExists = await user_Details.findOne({
          where: {
              email_id: email_id
          }
      });

      if (emailExists) {
          return res.status(400).json({ error: 'Email already exists. Please choose a different email.' });
      }

      // Hash the password
      const hashedPassword = await bcrypt.hash(user_password, 10);

      // Insert into user_details table
      const newUser = await user_Details.create({
          user_name,
          phone_number,
          email_id,
          department,
          user_password: hashedPassword,
          created_by: req.user.userid,
          company_Id
      });
     
      // Get the newly created user's ID
     // const userId = newUser.user_id;

      // Prepare roles data for user_roles table
      const rolesData = {
          user_id: newUser.dataValues.user_id,
          ...formattedPermissions // Assuming formattedPermissions directly maps to columns in user_roles table
      };

      // Insert into user_roles table (one record for all permissions)
    await user_Roles.create(rolesData);
      

      res.status(200).json({ message: 'User added successfully' });

  } catch (error) {
      console.error('Error adding user:', error);
      return res.status(500).json({ error: 'Internal server error' });
  }
}



   exports.admin_Delete_User=async(req,res)=>{
    try {
      const {user_Id}=req.body;
    const result=await user_Details.destroy({
      where:{user_id:user_Id}
    })
  
    if(result>0){
      return res.status(200).send({message:"user delet successfully"})
    }else{
      return res.status(400).json({message:"something went wrong"})
    }
    } catch (error) {
      return res.status(400).json(error)
    }

   }

   
   exports.admin_Get_User=async(req,res)=>{
    try {
      const {user_Id}=req.body;
      

    const result = await user_Details.findAll({
      where: {user_id:user_Id},
      include: {
          model: user_Roles,
          required: true, // INNER JOIN
          
      }
  });
       return res.status(200).send(result[0]); 
    } catch (error) {
      console.log(error)
      return res.status(400).json(error)
    }

   }    

   exports.admin_Update_User=async(req,res)=>{
    try { 
      
    const {user_id,...obj}=req.body;
   
    const result=await user_Details.update(obj,{
      where:{user_id:user_id}
    })
    

    if(result[0]==1){
        return res.status(200).json({Message:"User updated successfully."})
    }else{
        return res.status(400).json({Message:"User not found or no changes were made"})
    }
    } catch (error) {
      return res.status(400).send("Error updating user:",error)
    }

   }
  
  exports.admin_All_Details_Of_User=async(req,res)=>{
  
    const sql=`select * from user_details where created_By=${req.user.userid}`
  
    try {
      const result =await s_query(sql,[])
      res.status(200).send(result);
    } catch (error) {
      return res.status(404).send("Failed to save replies");
    }
  
  }
  
  exports.details_Of_User=async(req,res)=>{
    const{user_id}=req.body;
   
  
    const sql=`select * from user_details where user_id=${user_id}`;
  
    try {
      const result=await s_query(sql,[]);
       //res.json(200,result[0])
       res.status(200).send(result[0])
      
    } catch (error) {
       res.json(400,{err:"somthing went wrong",err:error})
    }
  }


  
  exports.source=async(req,res)=>{
       const {login_Url,password,user_Name,}=req.body;

      // const hass_pass=await bcrypt.hash(password,10);

       const result=source.create({
                               login_Url:login_Url,
                                password:password,
                               user_Name:user_Name
                              });
      result.then(()=>{
      
        return res.status(200).send({message:"Add data successfully"})
      }).catch((error)=>{
        return res.status(400).send({message:"somthing went wrong",err:error})
      })
       
  }
  exports.source_View=async(req,res)=>{

       const result=source.findAll();
       
       result
       .then((result)=>{
        return res.status(200).send(result)
       }).catch((error)=>{
        return res.status(400).send({message:"somthing went wrong"})
       })

  }
  