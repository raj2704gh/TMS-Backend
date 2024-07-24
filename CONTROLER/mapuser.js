const { s_query } = require("../UTILS/function")



exports.tender_Get_Mapped_Users = async (req, res) => {
  const { tender_Ref_No } = req.body;
 
  const company_Id = req.user.company_Id;
  
  if (!tender_Ref_No) {
    return res.status(400).json({ error: 'Tender reference number (tender_Ref_No) is required in the request body' });
  }

  // Retrieve mapped users from the database
  const selectSql = `select  ud.user_name,ud.user_id
From user_details as ud
where ud.user_id IN (
select m_user_id
FROM tender_mapped_users
where company_Id="${company_Id}" AND tender_Ref_No="${tender_Ref_No}")`

  try {
    const result = await s_query(selectSql, []);
   
    const objs = result.map((obj) => { return { name: obj.user_name, id: obj.m_user_id } })
    const set_Of_Id = new Set();
    const n_result = [];
    objs.forEach((obj) => {
      if (!set_Of_Id.has(obj.id)) {
        set_Of_Id.add(obj.id);
        n_result.push(obj)
      }
    })
    return res.status(200).send(result)
  } catch {
    return res.status(500).json({ error: 'Internal server error' });

  }
}

exports.tender_Add_Mapped_User = async (req, res) => {
  const { tender_Ref_No, user_ids } = req.body;
  const company_Id = req.user.company_Id

 

  if (!tender_Ref_No || !user_ids || !Array.isArray(user_ids) || user_ids.length === 0) {
    return res.status(400).json({ error: 'Tender reference number (tender_Ref_No) and non-empty array of user IDs (user_ids) are required in the request body' });
  }

  // Insert mapped users into the database
  const insertSql = `INSERT INTO tender_mapped_users (tender_Ref_No, m_user_id,company_Id) VALUES (?, ?,?)`;

  for (const id of user_ids) {
    const checkSql = `SELECT COUNT(*) AS count FROM tender_mapped_users WHERE tender_Ref_No="${tender_Ref_No}" AND m_user_id = ?`;
    const values = [id];

    try {
      const result = await s_query(checkSql, values);
      
      const count = result[0]['count'];
     
      if (count > 0) {
       
        // Handle accordingly if needed
      } else {
       
        try {
          const insertResult = await s_query(insertSql, [tender_Ref_No, id, company_Id]);
         
        } catch (err) {
          console.error("Error occurred during insertion:", err);
          // Handle insertion error if needed
        }
        // Handle accordingly if needed
      }
    } catch (error) {
      console.error("Error occurred during check:", error);
      return res.status(500).json({ error: 'Something went wrong', err: error });
    }
  }
  return res.status(200).json({ message: "All data save successfully" })
}

exports.tender_All_User_Of_Admin = async (req, res) => {

  // Retrieve mapped users from the database
  const selectSql = `SELECT * FROM user_details where created_By=${req.user.userid}`;

  try {
    const result = await s_query(selectSql, []);
    const objs = result.map((obj) => { return { id: obj.user_id, name: obj.user_name } })
    
    // const mappedUsers = results.map(result => result.user_id);
    res.json(objs);
    //res.status(404).send(objs);

  } catch (error) {
    return res.status(500).json({ error: 'Internal server error', err: error });
  }

}

exports.tender_Delete_Mapped_User = async (req, res) => {
  const { user_ids } = req.body;
  const placeholders = user_ids.map(() => '?').join(', ');
 
  const sql = `DELETE FROM tender_mapped_users WHERE m_user_id  IN (${placeholders});`
  //const values=user_ids;
 
  try {
    const result = await s_query(sql, user_ids);
    return res.status(200).json({ message: "Youar mapuser deleted successfully" })
  } catch (err) {
    return res.status(400).json({ message: "Your selected user not deleted", err: err })
  }
}