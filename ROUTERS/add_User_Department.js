const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const db=require("../UTILS/db_con.js")
const multer = require('multer');
const {verifyToken}=require("../UTILS/middelware.JS")
const { s_query } = require('../UTILS/function.JS');

dotenv.config();
const router = express.Router();





router.post("/add",verifyToken,(req,res)=>{
    
    const {description,department}=req.body;
    console.log("1")
    const created_By=req.user.userid;
    const sql_Q="INSERT INTO user_Department(department,description,created_By) value (?,?,?)"
     value=[department,description,created_By]
    db.query(sql_Q,value,(err,result)=>{
        if(err){  
            console.log("jii");
            console.error('Failed to save payment configuration:', err);
            return res.status(404).send({message:"Somthing went wrong"});
          }
          
          res.status(200).send({message:"Your data save successfully"})

    })
})


router.get("/get",verifyToken,(req,res)=>{
    const sql_Q=`SELECT * FROM user_Department where created_By=${req.user.userid} `
   
   db.query(sql_Q,(err,result)=>{
       if(err){  
           console.log("jii");
           console.error('Failed to save payment configuration:', err);
           return res.status(404).send({message:"Somthing went wrong"});
         }
         
         res.status(200).send(result)

   })
})




router.put("/update",verifyToken,async(req,res)=>{
    const {id,department,description}=req.body;
    
    
   const sql_Q=`UPDATE user_Department 
                SET department=?,
                description=?
                where created_By=${req.user.userid} AND id=? `
   value=[department,description,id];
   try{
    const rsult=await s_query(sql_Q,value)
    res.status(200).send({message:"Your data save successfully"})
    
   }catch{
    return res.status(404).send({message:"Somthing went wrong"});
   }

})




router.delete("/delete",verifyToken,(req,res)=>{
    res.send("hii")
})


module.exports=router;