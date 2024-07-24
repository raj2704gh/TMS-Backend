const express = require('express');
const jwt = require('jsonwebtoken');
const mysql = require('mysql');
const dotenv = require('dotenv');
const db=require("../UTILS/db_con.js")
const {verifyToken}=require("../UTILS/middelware.Js")
const controller=require("../CONTROLER/addUser.js")


dotenv.config();


const router = express.Router();



  
  

// Actual route with token verification
router.post('/Admin/addUser', verifyToken,controller.admin_Add_User);
router.delete("/admin/deleteUser",verifyToken,controller.admin_Delete_User)
router.post("/admin/getUser",verifyToken,controller.admin_Get_User)
router.put("/admin/updateUser",verifyToken,controller.admin_Update_User)
router.get("/admin/allDetailsOfUser",verifyToken,controller.admin_All_Details_Of_User)
router.post("/detailsOfUser",verifyToken,controller.details_Of_User);
router.post("/admin/source",verifyToken,controller.source)
router.get("/admin/source/view",verifyToken,controller.source_View)

module.exports = router;
