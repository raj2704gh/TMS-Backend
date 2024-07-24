// Import required modules
const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const jwt = require('jsonwebtoken');
//const controller=require('./controller')
const controller=require("../CONTROLER/mapuser")
const {verifyToken}=require("../UTILS/middelware")

// Express router
const router = express.Router();

// Load environment variables
dotenv.config();


// MySQL database connection


// Endpoint to add mapped users to a tender
router.post('/tender/addMappedUser', verifyToken,controller.tender_Add_Mapped_User);

// Endpoint to get mapped users for a tender
router.post('/tender/getMappedUsers', verifyToken, controller.tender_Get_Mapped_Users);


router.post("/tender/allUserOfAdmin",verifyToken,controller.tender_All_User_Of_Admin)

router.delete("/tender/deleteMappedUser",verifyToken,controller.tender_Delete_Mapped_User)




// Export router
module.exports = router;
