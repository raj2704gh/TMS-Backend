const express = require('express');
console.log("a1")
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db=require("../UTILS/db_con.js")
const asyncWrap=require("../UTILS/asyncWrap.js")
const upload=require("../UTILS/multer_setup.js")
const {verifyToken}=require("../UTILS/middelware.js")
//const controller=require("./controller")
const controller=require("../CONTROLER/bid_Envelop.js")
const ExpressError=require("../UTILS/ExpressError.js")

 dotenv.config();
const router = express.Router();



  
const is_Save=asyncWrap(async(req,res,next)=>{
  if(!req.body.tender_Ref_No){
    throw new ExpressError(404,"please enter your tender_Ref_NO")
  }
const sql_Q='SELECT count(*) FROM bid_Envelop where tender_Ref_No=?'
await db.query(sql_Q,req.body.tender_Ref_No,async(err,result)=>{
   if(err){
     next(err)
    }else{
     if(result[0]['count(*)']==0){

       const sql_Q1='INSERT INTO bid_Envelop (tender_Ref_No,created_By) value(?,?) '
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
  
 
console.log("kkk")

router.post("/createEnvalope",upload.array("files"),verifyToken,controller.create_Envalope)

router.post("/fillAnnexures",upload.array("files"),verifyToken,controller.fill_Annexures)

router.post("/fillAnnexures/get",verifyToken,controller.fill_Annexures_Get);
router.put("/assignUser",verifyToken,controller.assignUser)

router.post("/viewStatus",verifyToken,controller.view_Status)

router.get("/myAnnexures",verifyToken,controller.my_Annexures)

router.post("/getDepartment",verifyToken,controller.get_Department)

router.post("/selectUser",verifyToken,controller.select_User)


// })

// router.get("/viewStatus/:id", verifyToken, (req, res) => {
//   console.log(req.params.id, req.user.userid);
//   const sql_Q = `SELECT envelope_Type, annexure_Name, upload_Annexure, comment, select_User, annexure_Submittion_DT FROM bid_Envelop 
//               WHERE tender_Ref_No=? AND created_By=${req.user.userid}`;
//   const value = req.params.id;
//   var status = "Pending";

//   db.query(sql_Q, value,async (err, result) => {
//       if (err) {
//           console.log("jii");
//           console.error('Failed to save payment configuration:', err);
//           return res.status(400).send("Not created your envelope");
//       }
//      await db.query(`SELECT fill_Upload_Annexure FROM bid_Envelop WHERE tender_Ref_No=? AND created_By=${req.user.userid}`, value, (err, result) => {
//           if (err) {
//               console.log("jii");
//               console.error('Failed to save payment configuration:', err);
//               return res.status(400).send("Not created your envelope");
//           }
//           var len = result[0]["fill_Upload_Annexure"].length;
//           console.log(len, "hii");
//           status = len > 0 ? "Done" : "Pending"; // Update status here

//       });
//       console.log(status);
//       res.status(200).send({ Data: result, status: status });
//   });
// });




module.exports=router;