const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const jwt = require('jsonwebtoken');
const controller=require("../CONTROLER/payment")
const upload=require("../UTILS/multer_setup")
const {verifyToken}=require("../UTILS/middelware")
const bcrypt = require('bcryptjs');

 dotenv.config();
const router = express.Router();



   

 router.post("/getMakePayment",verifyToken,controller.getMakePayment)

 router.post('/makePayment',verifyToken,upload.array("files"),controller.makePayment);

router.post('/makePayment/SD',verifyToken, controller.make_Payment_For_SD);

router.post("/report/view",verifyToken,controller.report_View)

router.post("/report/type",verifyToken,controller.report_Type)

router.post("/report/type/update",verifyToken,controller.report_Type_Update)



module.exports=router;