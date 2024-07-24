const {s_query}=require("../UTILS/function")



//Addd financial limit
exports.add=async (req,res)=>{
    const {max_Limit,min_Limit}=req.body;
    const company_Id=req.user.company_Id;
    const created_By=req.user.userid;
    const sql="INSERT INTO financial_limit (max_Limit,min_Limit,created_By,company_Id) value (?,?,?,?)"
    const values=[max_Limit,min_Limit,created_By,company_Id]
    
  //manipulate with data base
  try{
    const result=await s_query(sql,values);
    res.status(200).send({message:"Yoar data add successfully"})
  }catch(err){
     console.log(err)
     return res.status(404).send({message:"Somthing went wrong",err:err});
  }
  
  }
  exports.get=async(req,res)=>{
    const sql=`SELECT * FROM  financial_limit  where created_By=${req.user.userid} `
  
   try{
       const result=await s_query(sql,[]);
       res.status(200).send(result)
    }catch(err){
       console.log(err)
       return res.status(404).send({message:"Somthing went wrong",err:err});
    }
  }
  exports.update=async(req,res)=>{
    const {id,max_Limit,min_Limit}=req.body;
    
    
   const sql=`UPDATE financial_limit 
                SET max_Limit=?,
                min_Limit=?
                where created_By=${req.user.userid} AND id=? `
   const values=[max_Limit,min_Limit,id];
   
   
   try{
      const result=await s_query(sql,values);
      res.status(200).send({message:"Your data save success fully"})
  }catch(err){
      console.log(err)
      return res.status(404).send({message:"Somthing went wrong",err:err});
  }
    
  }
  exports.delete=(req,res)=>{
    res.send("hii")
  }
  
  