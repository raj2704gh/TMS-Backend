
const {s_query}=require("../UTILS/function");
const apo_Po=require("../MODEL/apo_Po");
const upload = require("../UTILS/multer_setup");





exports.create_Apo=async (req,res)=>{
  try {
    const {tender_Ref_No,select_Apo_Po,po_Apo_D,contract_Value,comment,user_Name,date_Time}=req.body;

    const file_Path=req.files?req.files.map((obj)=>{return obj.path}).join(","):"null";
    
    const company_Id=req.user.company_Id;
    const result=await apo_Po.findOne({
     where:{created_By:req.user.userid,select_Apo_Po:`${select_Apo_Po}`,tender_Ref_No:`${tender_Ref_No}`}
    })

      
    if(result){
     return res.status(400).send({Message:"This data already exist"})
    }

    //              upload_Document=?
    const result_N=await apo_Po.create({...req.body,created_By:req.user.userid,upload_Document:file_Path,company_Id:company_Id})
    
    return res.status(200).send({Message:"Data add successfully"})
  } catch (error) {
    return res.status(400).send({Message:"Somthing went wrong",err:error})
  }

  
    
  }
exports.view_Apo_Get=async(req,res)=>{
  
    const {select_Type,tender_Ref_No}=req.body;
  
     const sql=`select * from apo_po where tender_Ref_No='${tender_Ref_No}' AND created_By=${req.user.userid} AND select_Apo_Po=
     "${select_Type}"` 
  
      values=[];
  
  //manipulate with data base
     try{
          const result=await s_query(sql,values);
          res.status(200).send(result)
      }catch(err){
           console.log(err)
           return res.status(400).send({message:"Somthing went wrong"});
      }
    
    
  }
  exports.view_Apo_Post=async(req,res)=>{
    const {tender_Ref_No,status}=req.body;
   const path=req.file?req.file.path:null;
  
     const sql=`update apo_po 
                  set status=?,
                  upload_Po_Apo=?
                  where tender_Ref_No='${tender_Ref_No}' AND created_By=${req.user.userid}`
  
     const values=[status,path]
  
  
     
  //manipulate with data base
    try{
      const result=await s_query(sql,values);
      res.status(200).send({message:"Your data save successfully"})
    }catch(err){
       console.log(err)
       return res.status(400).send({message:"Somthing went wrong"});
    }
  
    
  }
  
  