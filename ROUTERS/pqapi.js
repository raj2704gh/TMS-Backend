const express = require('express');
const multer = require('multer');
const jwt = require('jsonwebtoken');
//const controller=require("./controller")
const controller=require("../CONTROLER/pqapi.js")
const upload=require("../UTILS/multer_setup")
const {verifyToken}=require("../UTILS/middelware.js")
const mysql = require('mysql');

const router = express.Router();

// Set up MySQL connection



// API endpoint for handling file upload and PQ data insertion
router.post('/uploadTenderPQ',upload.array("files"), verifyToken,controller.upload_Tender_PQ);

router.post('/getTenderPQ', verifyToken,controller.get_Tender_PQ);

router.put('/updateTenderPQ',upload.array("files"), verifyToken,controller.update_Tender_PQ);
router.post("/addSubComment",upload.array("files"),verifyToken,controller.add_Sub_Comment)
router.post("/viewSubComment",verifyToken,controller.view_Sub_Comment)
router.post("/viewSubCommentCount", verifyToken, controller.view_Sub_Comment_count);
router.delete("/deletePQ",verifyToken,controller.delete_pq)






module.exports = router;
