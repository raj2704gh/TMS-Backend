const express = require('express');
const dotenv = require('dotenv');
const multer = require('multer');
const upload=require("../UTILS/multer_setup")
const {verifyToken}=require("../UTILS/middelware")
//const controller=require("./controller")
const controller=require("../CONTROLER/library_Of_Document");
const ExpressError=require("../UTILS/ExpressError")




dotenv.config();
const router = express.Router();


router.post("/add",upload.array("files"),verifyToken,controller.all_Files_Add);
// router.put("/update",verifyToken,controller.all_Files_Update);
// router.delete("/delete",verifyToken,controller.all_Files_Delete);
 router.post("/view",verifyToken,controller.all_Files_view);

module.exports=router;