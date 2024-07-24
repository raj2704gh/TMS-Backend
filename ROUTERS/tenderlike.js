const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
//const controller=require("./controller")
const controller=require("../CONTROLER/tender")
const {verifyToken}=require("../UTILS/middelware.js")
const jwt = require('jsonwebtoken');

// Express router
const router = express.Router();

// env
dotenv.config();




// API endpoint to add or remove a like to/from a tender action
router.post('/tenderLike', verifyToken,controller.tender_Like );

router.get('/getTenderLike', verifyToken, controller.get_Tender_Like);
router.post("/addFavorite",verifyToken,controller.add_Favorite)



// Export router
module.exports = router;
  