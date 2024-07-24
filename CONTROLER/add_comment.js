

const {s_query}=require("../UTILS/function")
const add_Comment=require("../MODEL/add_comment")


//Add Comment
exports.tender_Add_Comment =async(req, res) => {
    const { tender_Ref_No, comment } = req.body;
    const company_Id=req.user.company_Id;
    const userId = req.user.userid;
  
    if (!tender_Ref_No || !comment) {
      return res.status(400).json({ error: 'Tender reference number  and comment are required in the request body' });
    }
  
    // Check if the comment already exists for the user and tender
    const sql = 'SELECT * FROM tender_actions WHERE tender_Ref_No = ? AND user_id = ?';
    const values=[tender_Ref_No.toString(), userId]
  
    try {
      const result=await s_query(sql,values);
  
      if(result.length===0){
          
        // No existing comment, insert a new one
        const i_sql = 'INSERT INTO tender_actions (tender_Ref_No, user_id, comment,company_Id) VALUES (?, ?, ?,?)';
        const i_values= [tender_Ref_No, userId, comment,company_Id];
        try {
          const i_result=await s_query(i_sql,i_values);
          res.json({ message: 'Record add successfully' });
        } catch (error) {
          return res.status(500).json({ error: 'Internal server error',err:error });  
        }
      }else{
        const sql = 'UPDATE tender_actions SET comment = ? WHERE tender_Ref_No = ? AND user_id = ?';
        const values=[comment, tender_Ref_No, userId]
        try {
          const result=await s_query(sql,values);
          res.json({ message: 'Comment updated successfully' });
        } catch (error) {
          return res.status(500).json({ error: 'Internal server error' ,err:error});
        }
  
      }
    } catch (error) {
      return res.status(500).json({ error: 'Internal server error' });
    }
  
  }
  
  exports.tender_Add_Action=async (req, res) => {
    const { tender_Ref_No, i_want, reason } = req.body;
    const company_Id=req.user.company_Id;
    const userId = req.user.userid;
    
  
    if (!tender_Ref_No || !i_want || !reason) {
      return res.status(400).json({ error: 'Please enter valid detail' });
    }
  
    // Check if the tender action already exists for the user and tender
    const sql = 'SELECT * FROM tender_actions WHERE tender_Ref_No = ? AND user_id = ?';
    const values=[tender_Ref_No.toString(), userId]
  
    try {
      const result=await s_query(sql,values)
      
  
      if (result.length === 0) {
       // No existing action, return error
        
    // Existing action found, update i_want and reason
       const i_sql = `insert into tender_actions  (i_want,reason,tender_Ref_No,user_id,company_Id) value(?,?,?,?,?)`;
       const i_values=[i_want, reason, tender_Ref_No.toString(), userId,company_Id];
  
       try {
        const i_result=await s_query(i_sql,i_values);
        res.json({ message: 'your tender add in junk list' });
       } catch (error) {
        return res.status(500).json({ error: 'Internal server error',err:error });  
       }
      }else{
             
    // Existing action found, update i_want and reason
       const i_sql = 'UPDATE tender_actions SET i_want = ?, reason = ? WHERE tender_Ref_No = ? AND user_id = ?';
       const i_values=[i_want, reason, tender_Ref_No.toString(), userId];
  
       try {
        const i_result=await s_query(i_sql,i_values);
        res.json({ message: 'Your tender add in junk list' });
       } catch (error) {
        return res.status(500).json({ error: 'Internal server error',err:error });  
       }
      }
  
      
  
    } catch (error) {
      return res.status(500).json({ error: 'Internal server error' });
    }
  
  
  }
  
  exports.filter_On_Junk=async(req,res)=>{
    
      
      const sql=`SELECT * FROM tender_master as tm
      join  tender_actions as ta
      on ta.tender_Ref_No=tm.tender_Ref_No
      where  ta.i_want="mark as junk"`;
  
      try {
        const result=await s_query(sql,[]);
        
        if(result.length=="0"){
          return res.status(200).send({message:"data not found"})
        }else{
          return res.status(200).json(result);
        }
        
      } catch (error) {
        return res.status(400).send({message:"somthing went wrong",err:error})
      }
  }
  
  exports.filter_On_Archive=async(req,res)=>{
    
    const sql=`select * from tender_master `;
    
    try {
      const result=await s_query(sql,[]);
      const currentDate=new Date();
      const n_result=result.filter((obj)=>{return new Date(obj.project_end_date)<currentDate})
      return res.status(200).send(n_result)
    } catch (error) {
      return res.status(400).send({message:"somthing went wrong"})
    }
  }
  exports.filter_On_New=async(req,res)=>{
      const sql=`SELECT * FROM tender_master `
      try {
        const currentDate = new Date();
        const currentYear = currentDate.getFullYear();
        const currentMonth = currentDate.getMonth() + 1; // Months are zero-based, so add 1
        const currentDay = currentDate.getDate();
  
        const result=await s_query(sql,[]);
        //const currentDate=new Date();
        const n_result=result.filter((obj)=>{ 
                                         const date=new Date(obj.created_date)
                                         const year = date.getFullYear();
                                         const month = date.getMonth() + 1; // Months are zero-based, so add 1
                                         const day = date.getDate();
                                         return (year === currentYear && month === currentMonth && day === currentDay);
                                          }
                                        )
        
        return res.status(200).send( n_result)
      } catch (error) {
        return res.status(400).send({message:"somthing went wrong"})
      }
  }
  exports.filter_On_Favorite=async(req,res)=>{



    const sql=`SELECT * FROM tender_master as tm
      join  tender_actions as ta
      on ta.tender_Ref_No=tm.tender_Ref_No
      where  ta.favorite=1 AND ta.company_Id="${req.user.company_Id}"` ;
  
      try {
        const result=await s_query(sql,[]);
        
        if(result.length=="0"){
          return res.status(200).send({message:"data not found"})
        }else{
          return res.status(200).json(result);
        }
        
      } catch (error) {
        return res.status(400).send({message:"somthing went wrong",err:error})
      }
  }
  
  
  exports.add_Comment_For_Menu=async(req,res)=>{
    const{tender_Ref_No,comment_From,comment_By,commented_D,comment}=req.body;
    const company_Id=req.user.company_Id;
    
  
    const sql=`INSERT INTO add_comment (tender_Ref_No,comment_From,comment_By,commented_D,comment,created_By,company_Id) value(?,?,?,?,?,?,?)`;
    const values=[tender_Ref_No,comment_From,comment_By,commented_D,comment,req.user.userid,company_Id];
  
    try {
      const result=await s_query(sql,values)
      res.json({message:"your data save success full"});
    } catch (error) {
      return res.status(500).json({ error: 'Internal server error',err:error });
    }
  
  
  }
  
  exports.add_Comment_For_Menu_View=async(req,res)=>{
    
    const{tender_Ref_No}=req.body;
    try {
      const result=await add_Comment.findAll({
        where:{tender_Ref_No:tender_Ref_No}
      }
      );
      res.send(result)
    } catch (error) {
      return res.status(400).send({Message:` ${error}` })
    }
 
   
  
  }
  
  