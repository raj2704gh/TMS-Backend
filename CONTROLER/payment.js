const {s_query}=require("../UTILS/function") 
const payment_Configuration=require("../MODEL/payment_configurations")
const task_Tbl=require("../MODEL/task_Tbl")
const user_Details=require("../MODEL/user_Details")


//configuration

exports.home_r=async (req, res) => {

  const uploaded_Document=req.files ? req.files.map((obj)=>{obj.path}).join(",") : null;
  const userId = req.user.userid;
  const { tender_Ref_No, select_type, payment_Type, payment_Mode, currency, amount,online_Option, add_Detail, required_Before, comment ,select_Mapped_User_Id } = req.body;
  const company_Id=req.user.company_Id;
  
  // const sql = `INSERT INTO payment_configurations (tender_Ref_No, select_type, payment_Type, payment_Mode, currency, amount,upload_Document,online_Option,add_Detail,required_Before,comment,created_By,company_Id) 
  //              VALUES (?, ?, ?, ?, ?, ? ,? ,? ,? ,?,? ,?,?)`;
  // const values = [tender_Ref_No, select_type, payment_Type, payment_Mode, currency, amount,uploaded_Document,online_Option,  add_Detail,required_Before,comment,userId,company_Id];
  
  if (!select_Mapped_User_Id || !tender_Ref_No) {
    return res.status(400).json({ message: "tender refrence number and select user fild is reaquired" })
  }

   try{
  let  allReadyAssignUser;
  const [task, created] = await payment_Configuration.findOrCreate({
    where: { tender_Ref_No: tender_Ref_No,company_Id:req.user.company_Id, select_type:select_type },
    defaults: {...req.body,upload_Document:uploaded_Document,created_By: req.user.userid,company_Id:company_Id}
  });

console.log("jiiuoius")
if (created) {
    console.log(`Created new task with task_Id ${created}`);
} else {
    // Update the existing task if found
    const updatedTask = await payment_Configuration.update(
      {...req.body,upload_Document:uploaded_Document,created_By: req.user.userid,company_Id:company_Id},
      {
        where:{tender_Ref_No: tender_Ref_No,company_Id:req.user.company_Id, select_type:select_type}
      });
    console.log(`Updated existing task with task_Id ${updatedTask}`);
}



const result=await payment_Configuration.findOne({
  where:{tender_Ref_No:tender_Ref_No,company_Id:req.user.company_Id,select_type:select_type}
})

const Mapped_User_Arr=req.body.select_Mapped_User_Id.split(",");


console.log(result.dataValues.id,'lkjljlkjljljljlkjk________________',Mapped_User_Arr)
    
async function checkAndAssignUsers(result, Mapped_User_Arr) {
  for (const id of Mapped_User_Arr) {
    console.log(id,"_________________________")
      try {
          const result2 = await task_Tbl.findAll({
              where: { task_Id_Payment_Configuration: result.dataValues.id, assign_User_Id: id }
          });

          if (result2.length > 0) {
             allReadyAssignUser=await user_Details.findOne({
              attributes:["user_name"],
              where:{user_id:id}
            })
              console.log(`User ${id} already assigned`);
              return true; // User already assigned
          }
      } catch (error) {
          console.error('Error checking and assigning users:', error);
          throw error; // Throw error to handle in calling function
      }
  }
  return false; // No user found
}

// Example usage:

const isUserAssigned = await checkAndAssignUsers(result, Mapped_User_Arr);


if (isUserAssigned) {
  console.log(allReadyAssignUser.dataValues.user_name,"kjjl")
    return res.status(400).send({ message: `${allReadyAssignUser.dataValues.user_name} is  already assigned ` });
} else {
    // Continue with creating envelop or any other logic
   // console.log(result[0].id);
    
     await Promise.all(Mapped_User_Arr.map(async (id) => {
    console.log(id,"___________________________________________")
   const result2= await task_Tbl.create({
    task_Id_Payment_Configuration: result.dataValues.id,
      assign_User_Id: id,
      assign_By_Id: req.user.userid
    });
    console.log(result2,"jljlkjlk")
  }));
    return res.status(201).send({ message: 'Your envelop created successfully', Mapped_User_Arr });
}



   
} catch (error) {
    console.log(error,"ljlkjlk")
  return res.status(400).send({ message: 'Yopur envelop is not created', err: error });

}
 }

 exports.view=async(req,res)=>{
  const {tender_Ref_No,select_type}=req.body;
  
  const sql=`select id,select_type,payment_Mode,amount,upload_Document from payment_configurations where tender_Ref_No=? AND select_type=? AND created_By=${req.user.userid}`;
  const values=[tender_Ref_No,select_type];

  try{
    const result=await s_query(sql,values);
    res.status(200).send(result);
  }catch(err){
    return res.status(400).send({message:"please enter valid details ",err:err})
  }

}

exports.getEmdToSd=async(req,res)=>{
  
  const {tender_Ref_No}=req.body;
  const sql=`SELECT amount,select_type FROM payment_configurations
             WHERE tender_Ref_No='${tender_Ref_No}' AND created_By=${req.user.userid} AND select_type IN ('EMD', 'SD')`
  const values=[];
  
  try{
      const result=await s_query(sql,values);
      const n_Result=result.map((obj)=>{
      if(obj.select_type=="EMD"){
       const EMD=obj.amount
      
       return obj.amount
      }else{
       const SD=obj.amount
       
       return obj.amount
      }
    })
  
    const remaining_Amount=Math.abs(n_Result[0]-n_Result[1])
    
    res.status(201).send({remaining_Amount:remaining_Amount});
  
  }catch(err){
    return res.status(400).send({message:"Somthing went wrong",err:err});
  
  }
  }
  
//make payment
  

exports.getMakePayment=async(req,res)=>{
  const {tender_Ref_No,select_type}=req.body;
 
  
  const sql=`select * from payment_configurations where tender_Ref_No=? AND select_type=?`
  const values=[tender_Ref_No,select_type];

  try{
    const result=await s_query(sql,values);
    
    return res.status(200).send(result[0])

  }catch(err){
    return res.status(400).send({message:'Payment faild!!'});

   }
}

exports.  makePayment=async(req, res) => {
  
  const paths=req.files?req.files.map((file)=>{file.path}).join[0]:null;
 
const {c_Id,remaining_Amount,add_Bank,transaction_Number,transaction_Date,comment} = req.body
const company_Id=req.user.company_Id;

const sql = `INSERT INTO make_Payment (upload_document,add_Bank,remainning_for_SD,transaction_Number,transaction_Date,comment,created_By,c_Id,company_Id) 
            VALUES (?,? ,? ,?,?,?,?,? ,?)`;

const values=[paths, add_Bank,remaining_Amount,transaction_Number,transaction_Date,comment,req.user.userid,c_Id,company_Id]

try{
const result=await s_query(sql,values);
if(result.affectedRows>0){
  const sql_I=`update payment_configurations
               set status="Done"
               where id=${c_Id}`
  const values_I=[];
  try{
    const result_I=await s_query(sql_I,values_I)
    return res.status(200).send({message:"Payment done successfully"})

  }catch(err){
    return res.status(400).send({message:"Payment  Faild"})

  }
    
}

}catch(err){
return res.status(400).send({messagre:'Failed to save payment configuration'});


}
}

exports.make_Payment_For_SD=async(req, res) => {
  

const { c_Id,remaining_Amount, add_Bank, transaction_Number, transaction_Date,comment } = req.body
const company_Id=req.user.company_Id;


const sql = `INSERT INTO make_Payment (remainning_for_SD,add_Bank,transaction_Number,transaction_Date,comment,created_By,c_Id,company_Id) 
            VALUES (?,? ,? ,?,?,?,? ,?)`;
          
const values=[remaining_Amount,add_Bank,transaction_Number,transaction_Date,comment,req.user.userid,c_Id,company_Id]

try{
  const result=await s_query(sql,values);
  if(result.affectedRows>0){
    const sql_i=`update payment_configurations
                set status="Done"
                where id=${c_Id}`
    const value_i=[];
    try{
      const result_i=await s_query(sql_i,value_i);
      return res.status(200).send({message:"Your SD payment success fully done"})

    }catch(err){
      return res.status(400).send({Message:'Failed to save payment configuration',error:err});

    }

  }

}catch(err){
  return res.status(400).send({Massage:'Failed to save payment configuration',err:err});

}

}

exports.report_View=async(req,res)=>{
  const tender_Ref_No=req.body.tender_Ref_No
   console.log(tender_Ref_No)
 
    const sql=`select status,required_Before,amount,select_type from  payment_configurations where tender_Ref_No='${tender_Ref_No}' AND created_By=${req.user.userid} `
    const values=[]
   
    try{
      const result=await s_query(sql,values);
     
      return res.status(200).send(result)
  

    }catch(err){
      return res.status(200).send({message:"please enter valid details"})

    }
}

exports.report_Type=async(req,res)=>{
  const {select_type}=req.body;
 

   const sql=`select answer.*,tm.refund_Date
              from tender_master as tm
              join (SELECT status,tender_Ref_No,amount,required_Before,p.select_type from payment_configurations as p
                LEFT JOIN make_payment as m
                on p.id=m.c_Id
                where p.created_By=${req.user.userid} AND p.select_type="${select_type}") as answer 
                on tm.tender_Ref_No=answer.tender_Ref_No`

  const values=[];

  try{
    const result=await s_query(sql,values);
  
   return res.status(200).send(result)
  }catch(err){
    return res.status(400).send({message:"Please enter valid details"})

  }
  
}
exports.report_Type_Update=async(req,res)=>{
  const {refund_Date,tender_Ref_No,select_type}=req.body;
  
   const sql_Q=`UPDATE payment_configurations 
                SET refund_Date=?
                WHERE tender_Ref_No=? AND created_By=${req.user.userid} AND select_type=?`

   const values=[refund_Date,tender_Ref_No,select_type]

   try{
    const result=await s_query(sql,values);
    return res.status(201).send({message:"Your data updated success fully"})

  }catch(err){
    return res.status(400).send({message:"Your refunded date is not save "})

  }
  
}       
