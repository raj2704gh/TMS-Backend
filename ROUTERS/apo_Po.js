const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const jwt = require('jsonwebtoken');
const db=require("../UTILS/db_con.js")
const ExpressError=require("../UTILS/ExpressError.JS");
const {verifyToken}=require("../UTILS/middelware.Js")
//const controller=require("./controller")
const controller=require("../CONTROLER/apo_po.js")
const upload=require("../UTILS/multer_setup.JS")
const asyncWrap=require("../UTILS/asyncWrap.js");
const bcrypt = require('bcryptjs');

dotenv.config();
const router = express.Router();

// Connect to MySQL database


const is_Save=asyncWrap(async(req,res,next)=>{
  console.log(req.body.tender_Ref_No)
    if(!req.body.tender_Ref_No){
      throw new ExpressError(404,"please enter your tender_Ref_NO")
    }
  const sql_Q='SELECT count(*) FROM apo_Po where tender_Ref_No=? AND created_By=?'
  await db.query(sql_Q,[req.body.tender_Ref_No,req.user.userid],async(err,result)=>{
     if(err){
       next(err)
      }else{
       if(result[0]['count(*)']==0){
  
         const sql_Q1='INSERT INTO apo_Po (tender_Ref_No,created_By) value(?,?) '
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
    
router.post("/createApo",verifyToken,upload.array("files"),is_Save,controller.create_Apo)

router.post("/viewApo/get",verifyToken,controller.view_Apo_Get)

router.post("/viewApo/post",verifyToken,upload.single("file"),controller.view_Apo_Post)

module.exports=router;