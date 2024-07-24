

const express = require('express');
const bodyParser = require('body-parser');
const db=require("./UTILS/db_con.js");
const {db2}=require("./UTILS/db_con2.js");
const axios = require('axios');
//const {is_axist}=require("./UTILS/function.JS") ;

 //const task_Tbl=require("./MODEL/task_Tbl.js")
// const user_roles=require("./MODEL/user_roles.js")
// const source=require("./MODEL/source.js")
// const user_Roles= require("./MODEL/user_roles.js")
// const user_Department=require("./MODEL/user_department.js")
// const tender_Result=require("./MODEL/tender_result.js");
// const tender_Master=require("./MODEL/tender_Master.js");
// const tender_Pre_Bid=require("./MODEL/tender_pre_bid.js");
// const tender_Mapped_User=require("./MODEL/tender_mapped_users.js");
// const tender_Corrigendum=require("./MODEL/tender_corrigendum.js");
// const tender_action=require("./MODEL/tender_actions.js")
// const tender_Qualified=require("./MODEL/technical_qualified.js");
// const tbl_Bidders=require("./MODEL/tblbidders.js");
// const sub_coment=require("./MODEL/sub_Comment.js");
// const pq_sub_comment=require("./MODEL/pq_sub_comment.js");
// const payment_qualified=require("./MODEL/payment_qualified.js");
// const payment_configurations=require("./MODEL/payment_configurations.js")
// const negotiation1=require("./MODEL/negotiation.js");
// const make_Payment=require("./MODEL/make_payment.js");
// const library_Of_Document1=require("./MODEL/library_Of_Document.js")
// const financial_Limit=require("./MODEL/financial_limit.js")
// const company_Registraion1=require("./MODEL/company_registration.js");
// const cms1=require("./MODEL/cms.js");
 const blacklisted_Token=require("./MODEL/blacklisted_Tokens.js");
// const bid_Envelop=require("./MODEL/bid_Envelop.js")
// const apo_Po1=require("./MODEL/apo_Po.js");
// const add_Role1=require("./MODEL/add_Role.js");
// const add_Comment=require("./MODEL/add_comment.js");
// const blacklist=require("./MODEl")


const appRoot = require('app-root-path');
//const dotenv = require('dotenv').config({ path: `${appRoot}/.env` });
const dotenv = require('dotenv'); 
const bid_Envelope=require("./ROUTERS/bid_Envelop.js");
const userLoginModule = require('./ROUTERS/userlogin.js');
const addUserModule = require('./ROUTERS/adduser.js');
const mysql = require('mysql');
const {s_query}=require("./UTILS/function.JS") 
const addTenderModule = require('./ROUTERS/tender.js');
const http = require('http');
const getTenderData = require('./ROUTERS/tender.js');
const tenderlike = require('./ROUTERS/tenderlike');
const addcomment = require('./ROUTERS/addcomment');
const mapuser = require('./ROUTERS/mapuser.js');
const pqapi = require('./ROUTERS/pqapi.js'); 
const prebid = require('./ROUTERS/prebid.js');
const corrigendum = require('./ROUTERS/corrigendum.js');
//const bid_Envelope=require("./ROUTERS/bid_Envelop.js");
const payment_Qualified=require("./ROUTERS/tendur_Result.js"); 
const negotiation=require("./ROUTERS/negotiation.js");
const apo_Po=require("./ROUTERS/apo_Po.js");
const cms=require("./ROUTERS/cms.js"); 
const addUserDepartment=require("./ROUTERS/add_User_Department.js")
const add_Financial_Limit=require("./ROUTERS/add_Financial_Limit.js")
const add_Role=require("./ROUTERS/add_Role.js")
const hostname = '192.168.101.141'; 
const payment_Router=require("./ROUTERS/payment_Configuration.js");
const library_Of_Document=require("./ROUTERS/library_Of_Document.js")
const make_payment_Router=require("./ROUTERS/make_Payment2.js");
const Live = require("./ROUTERS/getLiveData.js");
const company_Registraion=require("./ROUTERS/company_Registration")


//const {db}=require("../utils/function.js")

const cors = require('cors');
const { error } = require('console');
dotenv.config({ path: `${appRoot}/.env` }); 



const app = express();
const port = process.env.PORT;

app.use(bodyParser.json())
app.use(cors())

//schema


main()
.then(()=>{
  console.log('Connection has been established successfully.');
}).catch((error)=>{
  console.error('Unable to connect to the database:', error);
})

async function main(){
  await db2.authenticate();
}


// db.getConnection((err, connection) => {
//   if (err) {
//     console.error('Error connecting to MySQL:', err.message);
//   } else {
//     console.log('Connected to MySQL databaseeee');
//     // Release the connection back to the pool
//     connection.release();
//   }
// });






// User login routes
app.use(getTenderData);
app.use(userLoginModule);
app.use(addUserModule);
app.use(addTenderModule);
app.use(tenderlike);
app.use(addcomment);
app.use(mapuser);
app.use(pqapi);
app.use(prebid);
app.use(corrigendum);
app.use("/payment/configurePayment",payment_Router);
app.use("/payment",make_payment_Router);
console.log("1111")
app.use("/bidEnvelop",bid_Envelope);
console.log("2222")
//app.use("/fillAnnexures",fill_Annexures);
app.use("/tenderResult",payment_Qualified);
app.use("/negotiation",negotiation);
app.use("/addUserDepartment",addUserDepartment);
app.use("/addFinancialLimit",add_Financial_Limit)
app.use("/addRole",add_Role);
app.use("/apoPo",apo_Po);
app.use("/cms",cms);
app.use('/get', Live);
app.use("/allFiles",library_Of_Document);
app.use("/company",company_Registraion);





app.get("/",(req,res)=>{
  console.log("jii")
  res.send("hii");
})


app.use((err,req,res,next)=>{
  let {statusCode=500,message="somthing went wrong"}=err;
  res.status(statusCode).send(err);
})

app.listen(3000,() => {
  console.log(`Server running at `)

});
