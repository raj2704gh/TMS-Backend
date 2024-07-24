const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const jwt = require('jsonwebtoken');
//const controller=require("./Controller/payment")
//const controller=require("./controller")
const upload=require("../UTILS/multer_setup")
const {verifyToken}=require("../UTILS/middelware.js")
const controller=require("../CONTROLER/payment.js")
const bcrypt = require('bcryptjs');

dotenv.config();
const router = express.Router();




router.post("/view",verifyToken,controller.view)  

router.post('/',verifyToken,upload.array("files"), controller.home_r);

router.post("/getEmdToSd",verifyToken,controller.getEmdToSd)

  module.exports=router;