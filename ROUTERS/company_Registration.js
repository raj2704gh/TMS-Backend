const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const jwt = require('jsonwebtoken');
const db=require("../UTILS/db_con.js")
const ExpressError=require("../UTILS/ExpressError.js");
const asyncWrap=require("../UTILS/asyncWrap.js");
const upload=require("../UTILS/multer_setup.js")
const {verifyToken}=require("../UTILS/middelware.js")
//const controller=require("./controller")
const controller=require("../CONTROLER/company_Registration.js")
const bcrypt = require('bcryptjs');

dotenv.config();

const router = express.Router();



router.get("/viewDetails",controller.view)

module.exports=router;