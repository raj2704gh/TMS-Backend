const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const jwt = require('jsonwebtoken');
const ExpressError=require("../UTILS/ExpressError")
const db=require("../UTILS/db_con")
const upload=require("../UTILS/multer_setup")
const {verifyToken}=require("../UTILS/middelware.js")
const asyncWrap=require("../UTILS/asyncWrap.js");
//const controller=require("./controller")
const controller=require("../CONTROLER/negotiatiation.js")
const bcrypt = require('bcryptjs');

dotenv.config();
const router = express.Router();




const is_Save=asyncWrap(async(req,res,next)=>{
  console.log(req.body.tender_Ref_No)
    if(!req.body.tender_Ref_No){
      throw new ExpressError(404,"please enter your tender_Ref_NO")
    }
  const sql_Q='SELECT count(*) FROM negotiation where tender_Ref_No=?'
  await db.query(sql_Q,req.body.tender_Ref_No,async(err,result)=>{
     if(err){
       next(err)
      }else{
       if(result[0]['count(*)']==0){
  
         const sql_Q1='INSERT INTO negotiation (tender_Ref_No,created_By) value(?,?) '
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
    


router.post("/postQuestion",upload.array("files"),verifyToken,controller.post_Question)

// router.post("/postReply",upload.single("file"),verifyToken,(req,res)=>{
       
//   const {tender_Ref_No,q_id,r_Comment}=req.body;
//   console.log(req.body,req.user.userid,"koooooooooooooooo")

//   let file_path="null";
//   if(req.file){
//     file_path=req.file-path;
//   }
  

//   const sql_Q=`UPDATE negotiation
//                SET r_Comment=?,
//                r_Attachment_Query_Document=?
//                WHERE tender_Ref_No=${req.body.tender_Ref_No} AND id=${q_id} AND created_By=${req.user.userid}`
//   const value=[r_Comment,file_path];
  

//   db.query(sql_Q,value,(err,result)=>{
//     if(err){  
//         console.log("jii");
//         console.error('Failed to save payment configuration:', err);
//         return res.status(400).send("Not created your envelope");
//       }
//       console.log(result)
//       res.status(200).send("Your reply successfully save")

// })

// })
 
router.post("/postReply", verifyToken, upload.array("files"),controller.post_Reply);

router.post("/getReply",verifyToken,controller.get_Reply)

router.post("/viewGovtReply",verifyToken,controller.view_Govt_Reply)

module.exports=router;