
const { s_query } = require("../UTILS/function")
const tender_Master = require("../MODEL/tender_Master");
const tender_action = require("../MODEL/tender_actions");
const user_Details = require("../MODEL/user_Details")
const { Sequelize, where } = require("sequelize");
const bcrypt = require('bcryptjs');


// Add Tender
exports.add_Tender = async (req, res) => {
  try {
    const tender_ID = req.body.tender_ID;
    const user_id = req.user.userid;
   


    const here = await user_Details.findOne({ where: { user_id } })
   
    const company_Id = req.user.company_Id;
    const pre_bid_submission_date = req.body.pre_bid_submission_date;
    const bid_validity_days = parseInt(req.body.bid_validity_days, 10);
    const arr_Of_Date = pre_bid_submission_date.split("-")
    const day = parseInt(arr_Of_Date[2], 10)
    const month = parseInt(arr_Of_Date[1], 10)
    const year = parseInt(arr_Of_Date[0], 10)
    const originalDate = new Date(year, month - 1, day); // April 27, 2002

    // Copy the original date to avoid mutating it directly
    const newDate = new Date(originalDate);

    // Add 80 days to the new date
    newDate.setDate(newDate.getDate() + bid_validity_days)

    // Get the updated date in a formatted string for India
    const options = {
      year: 'numeric',
      month: '2-digit',
      day: '2-digit',
    };
    const dateFormatter = new Intl.DateTimeFormat('en-IN', options); // Use 'en-IN' for India
    const refund_Date = dateFormatter.format(newDate);

    const upload_documents=req.files?req.files.map((obj)=>{return obj.path}).join(","):null;


    const obj = { ...req.body, user_id, company_Id: company_Id, refund_Date: refund_Date,upload_documents:upload_documents };

    // Check if tender_ID already exists
    // const existingTender = await tender_Master.findOrCreate({ where: { tender_ID } });
    const [existingTender, created] = await tender_Master.findOrCreate({ where: { tender_ID: `${tender_ID}` }, defaults: obj });
    

    if (created) {
      console.log("creating");
      return res.status(200).json({ message: "Add successful" });
    } else if (!created) {
      console.log("updating");
      const update = await tender_Master.update(obj, { where: { tender_ID } });
      return res.status(200).json({ message: "Update successful" });
    } else {
      return res.status(500).send({ message: "Something went wrong" });
    }

   
  } catch (error) {
    console.error("Error:", error); // Log the error for debugging
    return res.status(500).send({ message: "Something went wrong", error: error.message });
  }
};


//tenderdata
exports.get_Tenders = async (req, res) => {



  
  const company_Id = req.company_Id;
  //const sql = "SELECT tender_ID FROM tender_master ORDER BY tender_ID DESC ";
  const sql = `WITH ranked_tenders AS (
    SELECT 
        tm.*,
        ta.favorite, 
        ta.company_Id AS like_company_Id,
        ROW_NUMBER() OVER (PARTITION BY tm.tender_Ref_No ORDER BY CASE WHEN ta.company_Id = "${company_Id}" THEN 1 ELSE 2 END) AS rn
    FROM 
        tender_master tm
    LEFT JOIN 
        tender_actions ta ON tm.tender_Ref_No = ta.tender_Ref_No
)
SELECT 
      *
FROM 
    ranked_tenders

WHERE 
    rn = 1
    ORDER BY created_date DESC;
`;
  try {
    const result = await s_query(sql, []);
    const n_Result =result.map((obj)=>{
      if(!(obj.like_company_Id==company_Id || obj.like_company_Id==null)){
         return {...obj,favorite:0}
      }else{
        return {...obj}
      }
    })
   
    res.status(200).send(n_Result)
  } catch (err) {
     res.status(500).json({ error: "Internal server error", err: err });

  }
}

exports.get_Tender_id = async (req, res) => {
  
  const { tender_Ref_No } = req.body;
  const sql = "SELECT * FROM tender_master WHERE tender_Ref_No = ?";
  const values = [tender_Ref_No];

  try {
    const result = await s_query(sql, values);
    if (result.length === 0) {
      return res.status(404).json({ error: "Tender not found" });
    }
    res.json(result[0]);

  } catch {

    return res.status(500).json({ error: "Internal server error" });

  }

}

exports.update_Tender = async (req, res) => {
  try {

    const { tender_ID, ...updated_Value } = req.body;
    const company_Id = req.user.company_Id;
    const obj = { ...updated_Value, company_Id: company_Id }
    const result = await tender_Master.update(obj, { where: { tender_ID: `${tender_ID}` } });

    if (result.length > 0) {
      return res.status(200).send({ message: "Update successfully" })
    } else {
      return res.status(400).send({ message: "somthng went wrong" })
    }

  } catch (error) {
    return res.status(400).sedn({ message: "somthing went wrong", err: error })
  }


}

exports.getNextTenderId = async (req, res) => {
  const sql = `SELECT tender_ID 
               FROM tender_master 
               ORDER BY tender_ID DESC 
               LIMIT 1`;
  try {
    const result = await s_query(sql, []);

    const lastTenderId = result.length > 0 ? result[0].tender_ID : 111111; // Handle case when no tenders exist
    const nextTenderId = lastTenderId + 1;
    
     res.status(200).send({"tender_ID":nextTenderId})
  } catch (err) {
    console.error('MySQL query error:', err.message);
     res.status(500).json({ message: 'Internal server error' });
  }
};
