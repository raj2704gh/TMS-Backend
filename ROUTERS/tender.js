const express = require('express');
const jwt = require('jsonwebtoken');
const mysql = require('mysql');
const db=require("../UTILS/db_con")
const multer = require('multer');
const {verifyToken}=require("../UTILS/middelware.js")
const dotenv = require('dotenv');
const upload=require("../UTILS/multer_setup")
//const controller=require("./controller");
const controller=require("../CONTROLER/add_tender.js")
const path = require('path');

const router = express.Router();
dotenv.config();


router.post('/addTender',upload.array("files"),verifyToken,controller.add_Tender );

router.get("/nextTenderId", verifyToken, controller.getNextTenderId); 

router.get("/getTenders",verifyToken,controller.get_Tenders);

router.post("/getTender",verifyToken,controller.get_Tender_id);

router.put("/updatetender", verifyToken,controller.update_Tender);


module.exports = router;
