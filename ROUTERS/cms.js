const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const jwt = require('jsonwebtoken');
const db=require("../UTILS/db_con.js")
const ExpressError=require("../UTILS/ExpressError.js");
const asyncWrap=require("../UTILS/asyncWrap.js");
const upload=require("../UTILS/multer_setup.js")
const {verifyToken}=require("../UTILS/middelware.js")
//const controller=require("./controller")
const controller=require("../CONTROLER/cms.js")
const bcrypt = require('bcryptjs');

dotenv.config();
const router = express.Router();





const is_Save=asyncWrap(async(req,res,next)=>{
  console.log("hii")
  
    if(!req.body.tender_Ref_No){
      throw new ExpressError(404,"please enter your tender_Ref_NO")
    }
  const sql_Q='SELECT count(*) FROM cms where tender_Ref_No=?'
  await db.query(sql_Q,req.body.tender_Ref_No,async(err,result)=>{
     if(err){
       next(err)
      }else{
       if(result[0]['count(*)']==0){
  
         const sql_Q1='INSERT INTO cms (tender_Ref_No,created_By) value(?,?) '
         const value=[req.body.tender_Ref_No,req.user.userid]
         await db.query(sql_Q1,value,(err,result)=>{
           if(err){
             next(err);
           }else{
             next();
           }
          })
       }else{   
        next();
       }
       } }  
      )
     })

router.post("/addMilestones",upload.array("files"),verifyToken,controller.add_Milestones)

router.post("/viewMilestones",verifyToken,controller.view_Milestones)



module.exports=router;
    

