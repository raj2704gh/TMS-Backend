const {s_query}=require("../UTILS/function")




exports.add_Corrigendum=async(req, res) => {
   
  
      // If file upload is successful
      
      const { corrigendum_text, date, new_submission_date, tender_Ref_No } = req.body;
      const company_Id=req.user.company_Id;
      const upload_docs = req.files.map(file => file.path);
      const upload_doc = upload_docs.join(',');
      const created_by = req.user.userid; // Use the user ID from the JWT token
     
  
    const sql = 'INSERT INTO tender_corrigendum (corrigendum_text, date, documents, new_submission_date, created_by, tender_Ref_No, company_Id) VALUES (?, ?, ?, ?, ?, ?, ?)';
     const values=[corrigendum_text, date, upload_doc, new_submission_date, created_by, tender_Ref_No,company_Id]
     
     try {
      const result=await s_query(sql,values);
      res.status(201).json({ message: 'Corrigendum data inserted' });
     } catch (error) {
      res.status(500).json({ error: 'Failed to insert corrigendum data',err:error });
      console.log(error);
     }
  
    }

  exports.get_Corrigendum= async(req, res) => {
    const tender_Ref_No = req.body.tender_Ref_No;
    const sql = 'SELECT * FROM tender_corrigendum WHERE tender_Ref_No = ?';
  
    try {
      const result=await s_query(sql,[tender_Ref_No])
      if (result.length === 0) {
        res.status(404).json({ error: 'No corrigendum found for the specified tender reference number' });
      } else {
        res.status(200).json(result);
      }
  
    } catch (error) {
      res.status(500).json({ error: 'Failed to fetch tender corrigendum' });
    }
  }
  