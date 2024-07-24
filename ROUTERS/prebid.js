const express = require('express');
const multer = require('multer');
const jwt = require('jsonwebtoken');
//const controller=require("./controller")
const controller=require("../CONTROLER/prebid")
const {verifyToken}=require("../UTILS/middelware.js")
const upload=require("../UTILS/multer_setup")
const mysql = require('mysql');

const router = express.Router();

// Middleware for token verification


// API endpoint for handling file upload and tender_pre_bid data insertion
router.post('/uploadTenderPreBid',upload.array("files"), verifyToken,controller.upload_Tender_Pre_Bid);

//api for get data
router.post('/getTenderPreBidders',verifyToken,controller.get_Tender_Pre_Bidders);

//update api for pre_bid
router.put('/updateTenderPreBid',upload.array("files"), verifyToken,controller.update_Tender_Pre_Bid );

router.put('/updateTenderPreBidStatus', verifyToken, controller.update_Tender_Pre_Bid_Status);
router.post("/addBidder",verifyToken,controller.add_bidder)
router.post("/getBidder",verifyToken,controller.get_bidder)
router.post("/getCompetitor",verifyToken,controller.get_Competitor)


module.exports = router;
