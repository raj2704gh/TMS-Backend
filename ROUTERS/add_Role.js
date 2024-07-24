const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const db=require("../UTILS/db_con")
const multer = require('multer');
const {verifyToken}=require("../UTILS/middelware.JS")
const ExpressError=require("../UTILS/ExpressError.JS");


dotenv.config();
const router = express.Router();


router.post("/add",verifyToken,(req,res)=>{
    const {role}=req.body;
    console.log("1")
    const created_By=req.user.userid;
    const sql_Q="INSERT INTO add_Role (role,created_By) value (?,?)"
     value=[role,created_By]
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
    const sql_Q=`SELECT * FROM  add_Role  where created_By=${req.user.userid} `
   
   db.query(sql_Q,(err,result)=>{
       if(err){  
           console.log("jii");
           console.error('Failed to save payment configuration:', err);
           return res.status(404).send({message:"Somthing went wrong"});
         }
         
         res.status(200).send(result)

   })
})

router.put("/update",verifyToken,(req,res)=>{
    const {id,max_Limit,min_Limit}=req.body;
    
    
   const sql_Q=`UPDATE user_Department 
                SET department=?,
                description=?
                where created_By=${req.user.userid} AND id=? `
   value=[max_Limit,min_Limit,id];
   db.query(sql_Q,value,(err,result)=>{
       if(err){  
           console.log("jii");
           console.error('Failed to save payment configuration:', err);
           return res.status(404).send({message:"Somthing went wrong"});
         }
         
         res.status(200).send({message:"Your data update successfully"})

   })
    
})

router.delete("/delete",verifyToken,(req,res)=>{
    res.send("hii")
})


module.exports=router;