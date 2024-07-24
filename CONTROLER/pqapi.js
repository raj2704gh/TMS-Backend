
const {s_query}=require("../UTILS/function.js")
const tender_Pq=require("../Model/tender_pq.js");



exports.upload_Tender_PQ= async(req, res) => {
  
    // If file upload is successful
    const { pq_condition, pq_status, comment, tender_Ref_No } = req.body;

    const company_Id=req.user.company_Id;
   // tender_Ref_No=`"${tender_Ref_No}"`
    
    const upload_docs = req.files.map(file => file.path);
    const upload_doc = upload_docs.join(',');
    const  user_id  = req.user.userid ;
    const created_by = user_id; 
   //const create_date_time = new Date(); 

    const sql = 'INSERT INTO tender_pq (pq_condition, pq_status, comment, upload_doc, tender_Ref_No, user_id, created_by,company_Id) VALUES (?,?, ?, ?, ?, ?, ?, ?)';
    const value=[pq_condition, pq_status, comment, upload_doc, tender_Ref_No, user_id, created_by,company_Id]

    try{
      const result=await s_query(sql,value)
      res.status(201).json({ message: 'PQ data inserted', file: req.file });

    }catch{
      res.status(500).json({ error: 'Failed to insert PQ data' });
    }
   
  };



exports.get_Tender_PQ=async(req, res) => {
  const tender_Ref_No = req.body.tender_Ref_No;
  
  const sql = 'SELECT * FROM tender_pq WHERE tender_Ref_No = ?';
  const value=[tender_Ref_No]


  try{
    const result=await s_query(sql,value)

    if (result.length === 0) {
       res.status(401).json( {'message': 'No PQ data found for the specified tender reference number' ,'code':401});

     } else {

      const n_result = await Promise.all(result.map(async (obj) => {
        const i_sql = `SELECT count(*) FROM sub_coment where q_id=${obj.id}`;
        const result = await s_query(i_sql, []);
        return { ...obj,count:result[0]['count(*)']};
       }));

        res.status(200).json(n_result);
  }
  }catch{
    res.status(500).json({ error: 'Failed to fetch PQ data' });
  }

}


exports.update_Tender_PQ=async(req, res) => {
 
  console.log
  const {q_id,tender_Ref_No,...updatedObj}=req.body;

  try {
  const result=await tender_Pq.update(updatedObj,{where :{id:q_id}});
  return res.status(200).send({message:"update data successfully"})
  } catch (error) {
    return res.status(200).send({message:"update data successfully",err:error})
  }
  }

exports.add_Sub_Comment=async (req,res)=>{
  let string_Path="";

  
  const {s_comment,id,date_Time}=req.body;
  const company_Id=req.user.company_Id;
 
  


   string_Path=req.files?req.files.map((file)=>{return file.path}).join(","):"";
   const sql=`select user_name from user_details where user_id=${req.user.userid}`

   try {
    const result=await s_query(sql,[]);
    
  
  const i_sql=`INSERT INTO sub_coment (q_Id,s_comment,document,s_Comment_By,company_Id) values(?,?,?,?,?)`
  const i_values=[id,s_comment,string_Path,result[0].user_name,company_Id]

  try{
    const result=await s_query(i_sql,i_values)
    res.status(201).json({ message: 'Your comment save successfully' });
  }catch{
    res.status(500).json({ error: 'Somthing went wrong' });
  }
    //return res.send(result[0].user_name);
   } catch (error) {
     return res.status(400).send({message:"somthing went wrong"})
   }


}
exports.view_Sub_Comment=async(req,res)=>{
  const {tender_Ref_No,q_Id}=req.body;

  const sql=`select tender_Ref_No,s_Comment_By,document,date_Time	,s_comment from sub_coment as s
              LEFT JOIN tender_pq as t
              on s.q_Id=t.id
              WHERE t.tender_Ref_No=? AND s.q_Id=?`
  values=[tender_Ref_No,q_Id]

  try{
   const result=await s_query(sql,values);
  return res.status(201).json( result);
  }catch{
   return res.status(500).json({ error: 'Somthing went wrong' });
  }
     
}

exports.view_Sub_Comment_count = async(req, res) => {
  const { tender_Ref_No, q_Id } = req.body;

  
    const sql = `SELECT COUNT(*) AS recordCount FROM sub_coment AS s
                 LEFT JOIN tender_pq AS t
                 ON s.q_Id = t.id
                 WHERE t.tender_Ref_No = ? AND s.q_Id = ?`;
  
    const values = [tender_Ref_No, q_Id];
  
    try {

      const result=await s_query(sql,values);
      const recordCount = result[0].recordCount;
      res.status(200).json({ recordCount });
    } 
    catch (error) {
      console.error('Error:', error);
      res.status(500).json({ error: 'Something went wrong' });
    }
  };
  
  exports.delete_pq = async (req, res) => {
    const { id } = req.body;
  
    try {
      // Delete record using Sequelize
      const deletedRows = await tender_Pq.destroy({
        where: {
          id: id  // Assuming 'id' is the primary key of your model
        }
      });
  
      if (deletedRows === 1) {
        // Successfully deleted one record
        res.status(200).json({ message: 'Record deleted successfully' });
      } else {
        // No record found with the given id
        res.status(404).json({ error: 'Record not found' });
      }
  
    } catch (error) {
      // Handle Sequelize errors
      console.error('Error deleting record:', error);
      res.status(500).json({ error: 'Internal server error' });
    }
  };