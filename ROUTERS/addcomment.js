const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const db=require("../UTILS/db_con.js")
const {verifyToken}=require("../UTILS/middelware.Js")
const controller=require("../CONTROLER/add_comment.js")


// Express router
const router = express.Router();

// env
dotenv.config();




// API endpoint to add a comment to a tender action
router.post('/tender/addComment', verifyToken,controller.tender_Add_Comment);

  // API endpoint to add or update i_want and reason for a tender action
router.post('/tender/addAction', verifyToken,controller.tender_Add_Action);
router.get("/filterOnJunk",verifyToken,controller.filter_On_Junk);
router.get("/filterOnArchive",verifyToken,controller.filter_On_Archive);
router.get("/filterOnNew",verifyToken,controller.filter_On_New);
router.get("/filterOnFavorite",verifyToken,controller.filter_On_Favorite)
router.post("/addComment/forMenu",verifyToken,controller.add_Comment_For_Menu)
router.post("/addComment/forMenu/view",verifyToken,controller.add_Comment_For_Menu_View)
  

// Export router
module.exports = router;
