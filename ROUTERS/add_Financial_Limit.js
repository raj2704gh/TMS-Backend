const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const multer = require('multer');
const db=require("../UTILS/db_con.js")
const jwt = require('jsonwebtoken');
const {verifyToken}=require("../UTILS/middelware.JS")
//const controller=require("./controller")
const controller=require("../CONTROLER/add_Financial_Limit.js")
const ExpressError=require("../UTILS/ExpressError.JS");
const asyncWrap=require("../UTILS/asyncWrap.JS");
const bcrypt = require('bcryptjs');

dotenv.config();
const router = express.Router();




router.post("/add",verifyToken,controller.add)


router.get("/get",verifyToken,controller.get)




router.put("/update",verifyToken,controller.update)




router.delete("/delete",verifyToken,controller.delete)


module.exports=router;