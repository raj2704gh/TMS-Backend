
const db=require("../UTILS/db_con.js")
const {s_query}=require("../UTILS/function.js")







//Negotiation
exports.post_Question=async(req,res)=>{

      

      const path_String=req.files?req.files.map((file)=>{return file.path}).join(","):"";
       
      const {tender_Ref_No,reply_Deadline,select_Envelop,post_Question,current_DT}=req.body;
      const company_Id=req.user.company_Id;
     
      const sql=`INSERT INTO negotiation
                (select_Envelop,
                  post_Question,
                  reply_Deadline,
                  attach_Query_Document,
                  current_DT,
                tender_Ref_No,created_By,company_Id)value(?,?,?,?,?,?,?,?)
                `
       const values=[select_Envelop,post_Question,reply_Deadline,path_String,current_DT,tender_Ref_No,req.user.userid,company_Id];  

       try{
        const result=await s_query(sql,values);
        return res.status(200).send({message:"Your data insert successfully"})
  
  
       }catch{
        return res.status(404).send({message:"Your data not inserte "})
       }
         }
  
exports.post_Reply=async(req, res) => {
   
    const datas=JSON.parse(req.body.data);
    const tender_Ref_No=req.body.tender_Ref_No;
    //const path_String=req.files?req.files.map((file)=>{return file.path}).join(","):"";

  
    if (!datas || !Array.isArray(datas) || datas.length === 0) {
        return res.status(400).send({message:"Invalid input format or no answers provided"});
    }
    
    
    const sql = ` UPDATE negotiation
                    SET r_comment=?
                    WHERE tender_Ref_No='${tender_Ref_No}' AND id=? AND created_By=${req.user.userid}`;
    let errorOccurred = false;
  
    datas.forEach(async(data) => {

        const { q_id, r_comment } = data;

        //values.push( {r_comment,q_id});
        const values=[r_comment,q_id]


        try {
            const result =await s_query(sql,values)
        } catch (error) {
            
        }
    
        db.query(sql, values, (err, result) => {
          if (err) {
            console.log(err)
              //console.error('Failed to save replies:', err);
              errorOccurred = true;
              //return res.status(404).send("Failed to save replies");
          }else{
            console.log("1o")
            console.log(result);
            //res.status(200).send("Your replies saved successfully");
          }
        
      });
    });
    if (errorOccurred) {
      return res.status(404).send({message:"Failed to save replies"});
    } else {
      return res.status(200).send({message:"Your reply save"});
    }
    }
  exports.get_Reply=async(req,res)=>{
      
    const tender_Ref_No=req.body.tender_Ref_No;
    const sql_Q=`SELECT id,select_Envelop,post_Question,reply_Deadline FROM negotiation where tender_Ref_No='${tender_Ref_No}' AND created_By=${req.user.userid}`
    //const value=[r_Comment,file_path];
  
    try{
        const result=await s_query(sql_Q,[]);
       
          return res.status(200).send(result)
    }catch{
      return res.status(404).send({message:"Failed to save replies"});
  
    }
    
  
    
  }
  
  exports.view_Govt_Reply = async(req, res) => {
    
    const tender_Ref_No = req.body.tender_Ref_No;
    const select_Envelope = req.body.select_Envelope;
   
  
    const sql_Q = `
        SELECT post_Question, r_comment, reply_Deadline, r_Attachment_Query_Document
        FROM negotiation
        WHERE tender_Ref_No = ? AND select_Envelop = ?
    `;
    const values= [tender_Ref_No, select_Envelope];
    try{
      const result=await s_query(sql_Q,values);
    
    return res.status(200).json(result);

    }catch{
      return res.status(404).send({ message: "Not create your envelop" });
  
    }
  
  };
  
  
  