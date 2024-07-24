const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db=require("../UTILS/db_con")
const asyncWrap=require("../UTILS/asyncWrap")
const upload=require("../UTILS/multer_setup")
const {verifyToken}=require("../UTILS/middelware")
//const controller=require("./controller")
const controller=require("../CONTROLER/getLiveData");
const ExpressError=require("../UTILS/ExpressError")
const axios = require('axios');

dotenv.config();
const router = express.Router();


router.post('/getLiveData',verifyToken,controller.get_Live_Data);
router.post('/addLiveTender',verifyToken,controller.add_Live_Tender)
module.exports = router;
