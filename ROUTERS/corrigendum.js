const express = require('express');
const router = express.Router();
const mysql = require('mysql');
const jwt = require('jsonwebtoken');
const upload=require("../UTILS/multer_setup")
//const controller=require("./controller")
const controller=require("../CONTROLER/corrigendum")
const {verifyToken}=require("../UTILS/middelware")
const multer = require('multer');


// Middleware for token verification


// API endpoint to create a new tender corrigendum
router.post('/addCorrigendum',upload.array("files"), verifyToken,controller.add_Corrigendum);
  //});

// API endpoint to get tender corrigendum by tender_Ref_No
router.post('/getCorrigendum',controller.get_Corrigendum);
  

module.exports = router;
