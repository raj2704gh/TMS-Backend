
const asyncWrap = require("../UTILS/asyncWrap.js");
const { s_query } = require("../UTILS/function.js");
const tender_action = require("../Model/tender_actions.JS");
const tblbidders=require("../MODEL/tblbidders.js");
const tender_Master = require("../MODEL/tender_Master.js");



//tender_Result
exports.view_Result = asyncWrap(async (req, res) => {
  const { tender_Ref_No } = req.body;
  
  //const values=[req.body.tender_Ref_No];


  

  const sql = `SELECT p_Add_Comment,t_Add_Comment,	f_Qualified,f_Add_Comment,is_technical_qualified,ts.bidder_id,is_financial_qualified,ts.tender_Ref_No,is_payment_quilified,bidder_name 
    FROM tblbidders as t
                   left join tender_result as ts
                   on t.id=ts.bidder_id where ts.tender_Ref_No="${tender_Ref_No}" `



  try {
    const result = await s_query(sql, [])
    res.status(200).json(result)
  } catch (error) {
    return res.status(400).send({ message: "Somthing went wrong" });
  }


})




exports.tender_Qualified = async (req, res) => {
  // res.send("hii");
  const { tender_Ref_No, p_select_Bidder, p_self, p_Qualified, p_add_Comment, t_select_Bidder, t_self, t_Qualified, t_add_Comment,
    f_select_Bidder, f_self, f_Qualified, f_add_Comment,} = req.body;
    

    const company_Id=req.user.company_Id


  const sql_Q = 'INSERT INTO tender_result (tender_Ref_No,p_select_Bidder,p_self,p_Qualified,p_add_Comment,t_select_Bidder,t_self,t_Qualified,t_add_Comment,f_select_Bidder,f_self,f_Qualified,f_add_Comment,company_Id) value(?,?,?,?,?,?,?,?,?,?,?,?,?,?)';

  const values = [tender_Ref_No, p_select_Bidder, p_self, p_Qualified, p_add_Comment, t_select_Bidder, t_self, t_Qualified, t_add_Comment, f_select_Bidder, f_self, f_Qualified, f_add_Comment,company_Id]


  try {
    const result = await s_query(sql_Q, values)
    res.status(200).send("payment Qualification succsess full")
  } catch (error) {
    return res.status(400).send({ message: "Somthing went wrong", err: error });
  }

}


exports.payment_Qualified = async (req, res) => {


  const data = req.body;
  
  const bidder_id = data.p_Select_Bidder;

  if(data.p_Select_Bidder==="1"){
    
    data.p_Select_Bidder=req.user.company_name;
    
    const tender_Id=await tender_Master.findOne({
      attributes: ['tender_ID'] ,
      where:{tender_Ref_No :data.tender_Ref_No}
    })
  
     const result=await tblbidders.create({
      tender_ref_no:data.tender_Ref_No,
      bidder_name: data.p_Select_Bidder,
      company_Id:req.user.company_Id,
      tender_Id:tender_Id.dataValues.tender_ID});
   

  }else{
    const sql = `select bidder_name from tblbidders where id=${data.p_Select_Bidder}`
    try {
      const result = await s_query(sql, []);
      data.p_select_Bidder = result[0].bidder_name;
    } catch (error) {
      return res.status(400).json({ message: `This id is not add in bidder`, err: error })
    }
  }

  

  var updated_keys = [];
  var updated_values = [];


  for (const [key, value] of Object.entries(data)) {
    updated_keys.push(`${key} = ?`);
    updated_values.push(value)
  }

  const i_sql = `UPDATE tender_result set ${updated_keys.join(",")} where tender_Ref_No="${data.tender_Ref_No}" AND bidder_id="${bidder_id}"`
  const i_values = updated_values


  try {
    const i_result = await s_query(i_sql, i_values);
  
    const sql = `select p_Qualified_Document,p_Qualified_emd from tender_result where tender_Ref_No="${data.tender_Ref_No}" AND bidder_id="${bidder_id}"`
    try {
      const result = await s_query(sql, []);
      if (result[0].p_Qualified_Document == "true" && result[0].p_Qualified_emd == "true") {
        const sql = `update tblbidders set is_payment_quilified="1" where id="${bidder_id}"`;
        try {
          const result = await s_query(sql, []);

        } catch (error) {
          return res.status(400).json({ message: "somthinge went wrong", err: error })
        }
      }
    } catch (error) {

    }
    return res.status(200).json({ message: "your data update successfully" })
  } catch (error) {
    return res.status(400).json({ message: "somthingggg went wrong", err: error })
  }


}


exports.technical_Qualified = async (req, res) => {

  const data = req.body;
  const bidder_id = data.t_Select_Bidder;
  

  const sql = `select bidder_name from tblbidders where id=${data.t_Select_Bidder}`
  try {
    const result = await s_query(sql, []);
    //data.t_Select_Bidder=result[0].bidder_name;
  } catch (error) {
    return res.status(400).json({ message: `This id is not add in bidder`, err: error })
  }

  var updated_keys = [];
  var updated_values = [];


  for (const [key, value] of Object.entries(data)) {
    updated_keys.push(`${key} = ?`);
    updated_values.push(value)
  }

 
  // const i_sql=`UPDATE tender_result set ${updated_keys.join(",")} where bidder_id=${data.t_Select_Bidder}`;
  const i_sql = `UPDATE tender_result set ${updated_keys.join(",")} where tender_Ref_No="${data.tender_Ref_No}" AND bidder_id="${bidder_id}"`;
  const i_values = updated_values


  try {
    const i_result = await s_query(i_sql, i_values);
    const sql = `select t_Qualified from tender_result where tender_Ref_No="${data.tender_Ref_No}" AND bidder_id="${bidder_id}"`
    try {
      const result = await s_query(sql, []);
      
      if (result[0].t_Qualified == "Yes") {
       
        const sql = `update tblbidders set is_technical_qualified="1" where id="${bidder_id}"`;
        try {
          const result = await s_query(sql, []);

        } catch (error) {
          return res.status(400).json({ message: "somthing went wrong", err: error })
        }
      }
    } catch (error) {

    }
    return res.status(200).json({ message: "your data update successfully" })


  } catch (error) {
    return res.status(400).json({ message: "somthing went wrong", err: error })
  }



}
exports.financial_Qualified = async (req, res) => {

  const data = req.body;
  const bidder_id = data.f_Select_Bidder;
  const sql = `select bidder_name from tblbidders where id="${data.f_Select_Bidder}"`
  try {
    const result = await s_query(sql, []);
    //data.t_Select_Bidder=result[0].bidder_name;
  } catch (error) {
    return res.status(400).json({ message: `This id is not add in bidder`, err: error })
  }

  var updated_keys = [];
  var updated_values = [];


  for (const [key, value] of Object.entries(data)) {
    updated_keys.push(`${key} = ?`);
    updated_values.push(value)
  }


  const i_sql = `UPDATE tender_result set ${updated_keys.join(",")} where tender_Ref_No="${data.tender_Ref_No}" AND bidder_id="${bidder_id}"`;
  const i_values = updated_values


  try {
    const i_result = await s_query(i_sql, i_values);

    const sql = `select f_Qualified from tender_result where tender_Ref_No="${data.tender_Ref_No}" AND bidder_id="${bidder_id}"`
    try {
      const result = await s_query(sql, []);


      if (result[0].f_Qualified) {
        const sql = `update tblbidders set is_financial_qualified="1" where id="${bidder_id}"`;
        try {
          const result = await s_query(sql, []);

        } catch (error) {
          return res.status(400).json({ message: "somthing went wrong", err: error })
        }
      }
    } catch (error) {

    }
    return res.status(200).json({ message: "your data update successfully" })


  } catch (error) {
    return res.status(400).json({ message: "somthing went wrong", err: error })
  }




}


//tenderlike
exports.tender_Like = async (req, res) => {
  const { tender_Ref_No } = req.body;
  const userId = req.user.userid;
  const company_Id=req.user.company_Id;

  if (!tender_Ref_No) {
    return res.status(400).json({ error: 'Tender reference number (tender_Ref_No) is required in the request body' });
  }

  // Check if the user has already performed an action on this tender
  const sql = 'SELECT count(*) FROM tender_actions WHERE tender_Ref_No = ? AND company_Id=? AND 	likes=1';
  const values = [tender_Ref_No.toString(),company_Id];

  try {
    const result = await s_query(sql, values);
   

    let i_sql = '';
    if (result[0]['count(*)'] > 0) {
      res.json({ message: "Allready like this tender" });
    } else {

      // User hasn't performed any action, insert a new record with like status set to true
      i_sql = 'INSERT INTO tender_actions (tender_Ref_No, user_id, likes,company_Id) VALUES (?, ?, ?,?)';
      const i_values = [tender_Ref_No.toString(), userId, true,company_Id];
      try {
        const result = await s_query(i_sql, i_values);
        res.json({ message: 'Tender action liked successfully' });

      } catch (err) {
        return res.status(500).json({ error: 'Internal server error' });
      }

    }
  } catch {
    return res.status(500).json({ error: 'Internal server error' });
  }

}

exports.get_Tender_Like = async (req, res) => {
  const userId = req.user.userid;
  const company_Id=req.user.company_Id;
 
 

  const sql =`select * from tender_master
              where tender_Ref_No in (select tender_Ref_No 
                                      from tender_actions
                                      where company_Id="${company_Id}")`

  const values = [userId];
  try {
    const result = await s_query(sql, values)
   
    if(result.length==0){
      return res.status(200).send(result)
    }
    res.json(result);
    
   
  } catch (error) {
    return res.status(500).json({ error: 'Internal server error' });
  }

}


exports. add_Favorite = async (req, res) => {
  
    const {tender_Ref_No}=req.body;
    const company_Id=req.user.company_Id;
    const user_id=req.user.userid
    

    try {
      const [tender, created] = await tender_action.findOrCreate({
        where: { tender_Ref_No: tender_Ref_No, company_Id: company_Id },
        defaults: {
          tender_Ref_No: tender_Ref_No,
          company_Id: company_Id,
          user_id: user_id,
          favorite: true // Assuming favorite is a boolean field indicating favorite status
        }
      });

     
  
      if (!created) {
        // If the record already existed, update some properties if needed
        tender.favorite = !tender.favorite; // Example: Toggle favorite status
        await tender.save(); // Save the changes to the existing record
      }
  
      return res.status(200).send({Message:"you are add this tender in favorit list"})
    } catch (error) {
      console.error('Error adding or updating tender:', error);
      return res.status(400).send({Message:"Something went wrong",err:error})

    }
  
}




