const {s_query}=require("../UTILS/function");
const user_details=require("../MODEL/user_Details")
const tender_pre_bid=require("../MODEL/tender_pre_bid")









exports.upload_Tender_Pre_Bid= async (req, res) => {

 
   
       // If file upload is successful
      
       const { by_company,date_and_time, company_name, page_number, paragraph_number, paragraph_content, question, status, revise_content, govt_reply, is_doc_paid, tender_Ref_No,checkquery } = req.body;
       console.log(req.files,"jljlkjlkjlk")
       //const upload_docs = req.files.map(file => file.path);
       const upload_docs=req.files?req.files.map((obj)=>{obj.path}).join(","):null;
      // const upload_doc = upload_docs.join(',');
       const created_by = req.user.userid;
       const company_Id=req.user.company_Id;
       let user_n="";

      
       try {
        const result= await user_details.findOne({
          attributes: ['user_name'],
          where: {
            user_id: req.user.userid
          }
  
         })
        // console.log(result,"kjljlkj")
        
          const result2=await tender_pre_bid.create({...req.body,documents:upload_docs,created_by,p_user:user_n,company_Id})
         res.status(200).send({message:"Record update  successfully"})
       } catch (error) {
           res.send(` error: 'Failed to insert tender_pre_bid data' ,err:${error}`)
       }
      //  const sql= `select user_name from user_details where user_id=${req.user.userid}`;
   
      //  try{
      //    const result=await s_query(sql,[]);
         
      //    user_n=result[0].user_name;
      //    const i_sql = `INSERT INTO tender_pre_bid (date_and_time, company_name, page_number, paragraph_number, paragraph_content, question, documents, status, revise_content, govt_reply, is_doc_paid, created_by,  tender_Ref_No,p_user,by_company,company_Id,checkquery) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?) `;
      //    const i_values= [date_and_time, company_name, page_number, paragraph_number, paragraph_content, question, upload_doc, status, revise_content, govt_reply, is_doc_paid, created_by, tender_Ref_No,user_n,by_company,company_Id,checkquery];

      //    try {
      //     const result =await s_query(i_sql,i_values);
          
      //     res.status(200).json({ message: 'tender_pre_bid data insertedsss', file: req.files });
      //    } catch (error) {
      //     res.status(500).json({ error: 'Failed to insert tender_pre_bid data',err:error });
      //    }
       
   
      //  }catch(error){
      //    res.status(500).json({ error: 'Failed to insert tender_pre_bid data' ,err:error});
      //  }
      
    }    
    
    
exports.get_Tender_Pre_Bidders=async(req,res)=>{
     const tender_Ref_No = req.body.tender_Ref_No;
    // tender_Ref_No=`"${tender_Ref_No}"`
     const sql = 'SELECT * FROM tender_pre_bid WHERE tender_Ref_No = ?';
     const values=[tender_Ref_No];
   
     try{
     const result=await s_query(sql,values)
     if(result.length === 0)
       {
           res.status(404).json({error: "no data found"});
       }
       else
       {
           res.status(200).json(result);
       }
     }catch{
       res.status(500).json({error:"faild to get data"});
   
     }
   
   }

 exports.update_Tender_Pre_Bid=async(req, res) => {
         // Extract user ID from JWT token
         const userId = req.user.userid;
         
        
         const { tender_Ref_No,id } = req.body;
         
         if(!id){return  res.status(400).json({message:"id is required"})};
         const updates = {};
         const upload_docs = req.files.map(file => file.path).join(',');
   
         if (req.body.date_and_time) updates.date_and_time = req.body.date_and_time;
         if (req.body.company_name) updates.company_name = req.body.company_name;
         if (req.body.page_number) updates.page_number = req.body.page_number;
         if (req.body.paragraph_number) updates.paragraph_number = req.body.paragraph_number;
         if (req.body.paragraph_content) updates.paragraph_content = req.body.paragraph_content;
         if (req.body.question) updates.question = req.body.question;
         if (upload_docs) updates.documents = upload_docs;
         if (req.body.status) updates.status = req.body.status;
         if (req.body.revise_content) updates.revise_content = req.body.revise_content;
         if (req.body.govt_reply) updates.govt_reply = req.body.govt_reply;
         if (req.body.is_doc_paid) updates.is_doc_paid = req.body.is_doc_paid;
         if (userId) updates.updated_by = userId; // Update updated_by with user ID from JWT token
         updates.update_date_time = new Date();
         
         
         const sql = 'UPDATE tender_pre_bid SET ? WHERE tender_Ref_No = ? AND id=?';
   
         const values=[updates, tender_Ref_No,id];
         try{
              const result=await s_query(sql,values);
              res.status(200).json({ message: 'tender pre bid data updated', files: req.files });
        }catch{
         return res.status(500).json({ error: 'Failed to update tender_pre_bid data' });
   
         }
     }  


   exports.update_Tender_Pre_Bid_Status = async(req, res) => {
     // Extract data from the request
     const { id, tender_Ref_No, status } = req.body;
   
     // Validate input data
     if (!id || !tender_Ref_No || !status) {
         return res.status(400).json({ error: 'Missing required parameters' });
     }
   
     // Construct SQL query to update status
     const sql = 'UPDATE tender_pre_bid SET status = ? WHERE id = ? AND tender_Ref_No = ?';
     const values = [status, id, tender_Ref_No];
     try{
       const result =await s_query(sql,values);
   
       if (result.affectedRows === 0) {
         return res.status(404).json({ error: 'Record not found' });
       }
   
     // Status updated successfully
     res.status(200).json({ message: 'Status updated successfully' });
     }catch(err){
       return res.status(500).json({ error: 'Failed to update status',err:err });
        
     }
   


   };
   exports.add_bidder=async(req,res)=>{
    const {is_technical_qualified,is_financial_qualified,is_payment_quilified,tender_Ref_No,bidder_name,tender_Id}=req.body

    const company_Id=req.user.company_Id;
  
    const sql=`INSERT INTO tblbidders (is_technical_qualified,
                                      is_financial_qualified,
                                      is_payment_quilified,
                                      tender_Ref_No,
                                      bidder_name,
                                      tender_Id,company_Id) value(?,?,?,?,?,?,?)`
  
    const values=[is_technical_qualified,
                  is_financial_qualified,
                  is_payment_quilified,
                  tender_Ref_No,
                  bidder_name,
                  tender_Id,company_Id]         
                  
   try {
     const result=await s_query(sql,values)
     return res.status(200).json({message:"Your data save successfulluy"})
   } catch (error) {
     return res.status(400).json({err:"somthing went wrong",err:error})
   }              
  }
  
  
 exports.get_bidder=async(req,res)=>{
  const {qulified_Type,tender_Ref_No}=req.body;
 
 var sql=""
 if(qulified_Type==="payment"){
  
   sql=`select bidder_name,id from tblbidders where tender_Ref_No="${tender_Ref_No}" AND company_Id="${req.user.company_Id}"`;
 }else if(qulified_Type==="technical"){
  sql=`select bidder_name,id from tblbidders where tender_Ref_No="${tender_Ref_No}" AND is_payment_quilified=1 AND company_Id="${req.user.company_Id}"`;
 }else if(qulified_Type==="financial"){
  sql=`select bidder_name,id from tblbidders where tender_Ref_No="${tender_Ref_No}" AND is_technical_qualified=1 AND company_Id="${req.user.company_Id}"`
 }
//const sql=`select bidder_name,id from tblbidders where tender_Ref_No="${tender_Ref_No}"`;
    
  try {
    const result=await s_query(sql,[]);
    return res.status(200).json(result)
  } catch (error) {
    return res.status(400).json({message:"somthing went wrong",err:error})
  }
 } 

 exports.get_Competitor=async(req,res)=>{
   
      const sql=`SELECT DISTINCT bidder_name FROM tblbidders;`
      try {
        const result=await s_query(sql,[]);
        return res.status(200).send(result);
        
      } catch (error) {
        return res.status(400).send({message:"somthing went wrong"})
      }

   
 }