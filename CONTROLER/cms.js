const {s_query}=require("../UTILS/function")



exports.add_Milestones=async(req,res)=>{
    const {tender_Ref_No,select_Milestone,add_Milestone,
    add_Milestone_Desc,add_completion_DT}=req.body;
    const company_Id=req.user.company_Id;
    
    var upload_docs=""
    if(req.files){
      const upload_docs = req.files.map(file => file.path).join(',');
    }else{
      upload_docs=null;
    }
    
   
  
   const sql=`INSERT INTO cms (tender_Ref_No,select_Milestone,add_Milestone,add_Milestone_Desc,
    add_completion_DT,
    attach_Document,
    created_By,company_Id) value(?,?,?,?,?,?,?,?)`
  const values=[tender_Ref_No,select_Milestone,add_Milestone,add_Milestone_Desc,add_completion_DT,upload_docs,req.user.userid,company_Id];
  
  try {
    const result=await s_query(sql,values);
    res.status(200).send({message:"Your data save successfully"})
  } catch (error) {
    return res.status(400).send({message:"Somthing went wrong"});
    
  }
  }
  
  exports.view_Milestones=async(req,res)=>{
 
  const sql=`SELECT * from cms WHERE tender_Ref_No='${req.body.tender_Ref_No}' AND select_Milestone="${req.body.select_Milestone}"`;
  // const value=[select_Milestone,add_Milestone,add_Milestone_Desc,add_completion_DT,req.file.path];
  
  try {
    const result =await s_query(sql,[])  
    
    
  
  res.status(201).send(result)
  } catch (error) {
    return res.status(400).send({message:"Somthing went wrong",err:error});
  }
  
  
  }
  
  