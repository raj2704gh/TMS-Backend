const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const jwt = require('jsonwebtoken');
const db=require("../UTILS/db_con")
const ExpressError=require("../UTILS/ExpressError")
const {verifyToken}=require("../UTILS/middelware.js")
//const controller=require("./controller")
const controller=require("../CONTROLER/tender.js")
const asyncWrap=require("../UTILS/asyncWrap.js");
const bcrypt = require('bcryptjs');

dotenv.config();
const router = express.Router();


const is_Save=asyncWrap(async(req,res,next)=>{
  
  var bidder_id="";
  if(req.body.t_Select_Bidder){
    bidder_id=req.body.t_Select_Bidder;
  }else if(req.body.p_Select_Bidder){
    bidder_id=req.body.p_Select_Bidder
  }else if(req.body.f_Select_Bidder){
    bidder_id=req.body.f_Select_Bidder;
  }



  
  
  if(!req.body.tender_Ref_No){
    throw new ExpressError(404,"please enter your tender_Ref_NO")
  }
const sql_Q='SELECT count(*) FROM tender_result where tender_Ref_No=? AND bidder_id=?'
await db.query(sql_Q,[req.body.tender_Ref_No,bidder_id],async(err,result)=>{
   if(err){
     next(err)
    }else{
      
     if(result[0]['count(*)']==0){
       
       const sql_Q1='INSERT INTO tender_result (tender_Ref_No,created_By,bidder_id) value(?,?,?) '
       const value=[req.body.tender_Ref_No,req.user.userid,bidder_id]
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

router.post("/viewResult",verifyToken,controller.view_Result)


router.post("/tenderQualified",controller.tender_Qualified)


router.post("/paymentQualified",verifyToken, is_Save,controller.payment_Qualified)


router.post("/technicalQualified", verifyToken, is_Save, controller.technical_Qualified);


router.post("/financialQualified", verifyToken, is_Save,controller.financial_Qualified );

 
 


module.exports=router;