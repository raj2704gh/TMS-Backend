
const { s_query } = require("../UTILS/function")
console.log("a2")
const bid_Envelop = require("../MODEL/bid_Envelop");
const user_Details = require("../MODEL/user_Details");
const task_Tbl=require("../MODEL/task_Tbl")
const { use } = require("../ROUTERS/userlogin");
const { where } = require("sequelize");
const payment_Configuration=require("../MODEL/payment_configurations")


exports.create_Envalope = async (req, res) => {
  
  //const uploaded_Document=req.file ? req.file.path : null;
  const uploaded_Document = req.files ? req.files.map((file) => { return file.path }).join(",") : "";
  
  const { tender_Ref_No, envelope_Type, annexure_Name, department, select_Mapped_User_Id, comment, annexure_Submittion_DT } = req.body;
  const company_Id = req.user.company_Id;
 console.log(tender_Ref_No,"jlkjlkjlkj")


  if (!select_Mapped_User_Id || !tender_Ref_No) {
    return res.status(400).json({ message: "tender refrence number and select user fild is reaquired" })
  }
  const sql = 'INSERT INTO bid_envelop (tender_Ref_No,envelope_Type,annexure_Name,upload_Annexure,department,select_Mapped_User_Id ,comment,annexure_Submittion_DT,created_By,company_Id)value(?,?,?,?,?,?,?,?,?,?)';
  const values = [tender_Ref_No, envelope_Type, annexure_Name, uploaded_Document, department, select_Mapped_User_Id, comment, annexure_Submittion_DT, req.user.userid, company_Id];


  try {
    //const result = await s_query(sql, values)
  //const values = [tender_Ref_No, envelope_Type, annexure_Name, uploaded_Document, department, select_Mapped_User_Id, comment, annexure_Submittion_DT, req.user.userid, company_Id];
 // const result=await bid_Envelop.create({...req.body,upload_Annexure:uploaded_Document,created_By: req.user.userid,company_Id})
    
    //res.status(201).send({ message: 'Your envelop created successfully' });

   let  allReadyAssignUser;
    const [task, created] = await bid_Envelop.findOrCreate({
      where: { tender_Ref_No: tender_Ref_No,company_Id:req.user.company_Id, envelope_Type:envelope_Type },
      defaults: {...req.body,upload_Annexure:uploaded_Document,created_By: req.user.userid,company_Id}
  });

   console.log("jiiuoius")
  if (created) {
      console.log(`Created new task with task_Id ${created}`);
  } else {
      // Update the existing task if found
      const updatedTask = await bid_Envelop.update(
        {...req.body,upload_Annexure:uploaded_Document,created_By: req.user.userid,company_Id},
        {
          where:{tender_Ref_No: tender_Ref_No,company_Id:req.user.company_Id,envelope_Type:envelope_Type}
        });
      console.log(`Updated existing task with task_Id ${updatedTask}`);
  }
    

  const result=await bid_Envelop.findAll({
    where:{tender_Ref_No:tender_Ref_No,company_Id:req.user.company_Id,envelope_Type:envelope_Type}
  })

    const Mapped_User_Arr=req.body.select_Mapped_User_Id.split(",");

    
    async function checkAndAssignUsers(result, Mapped_User_Arr) {
      for (const id of Mapped_User_Arr) {
          try {
              const result2 = await task_Tbl.findAll({
                  where: { task_Id_Bid_Envelop: result[0].id, assign_User_Id: id }
              });
  
              if (result2.length > 0) {
                 allReadyAssignUser=await user_Details.findOne({
                  attributes:["user_name"],
                  where:{user_id:id}
                })
                  console.log(`User ${id} already assigned`);
                  return true; // User already assigned
              }
          } catch (error) {
              console.error('Error checking and assigning users:', error);
              throw error; // Throw error to handle in calling function
          }
      }
      return false; // No user found
  }
  
  // Example usage:
  
  const isUserAssigned = await checkAndAssignUsers(result, Mapped_User_Arr);

  if (isUserAssigned) {
    console.log(allReadyAssignUser.dataValues.user_name,"kjjl")
      return res.status(400).send({ message: `${allReadyAssignUser.dataValues.user_name} is  already assigned ` });
  } else {
      // Continue with creating envelop or any other logic
      console.log(result[0].id);
      
       await Promise.all(Mapped_User_Arr.map(async (id) => {
      
     const result2= await task_Tbl.create({
      task_Id_Bid_Envelop: result[0].id,
        assign_User_Id: id,
        assign_By_Id: req.user.userid
      });
      console.log(result2,"jljlkjlk")
    }));
      return res.status(201).send({ message: 'Your envelop created successfully', Mapped_User_Arr });
  }
      
    } catch (error) {
      
      return res.status(400).send({ message: 'Yopur envelop is not created', err: error });

    }
}


exports.fill_Annexures = async (req, res) => {

  //const upload_file=req.files?req.files.map((file)=>{file.path}).join(","):null;
  const path_String = req.files ? req.files.map((file) => { return file.path }).join(",") : "";
  
  const { comment, tender_Ref_No, id } = req.body


  const sql = `UPDATE bid_Envelop 
                    SET fill_Comment = ?, 
                    fill_Upload_Annexure=?
                    WHERE tender_Ref_No = "${tender_Ref_No}" AND id=${id}`


  const values = [comment, path_String]
  try {
    const result = await s_query(sql, values)
    if (result.affectedRows == 0) {
      return res.status(400).json({ message: "mapped user is not find" })
    }
    res.status(201).send({ message: "Done" });

  } catch (error) {
    return res.status(400).send({ message: "Somthing went wrong" });
  }

}


exports.fill_Annexures_Get = async (req, res) => {

  const sql = `SELECT id,tender_Ref_No,annexure_name,upload_annexure,department,
  select_Mapped_User_Id,annexure_Submittion_DT FROM bid_envelop
  where tender_Ref_No="${req.body.tender_Ref_No}" AND id=${req.body.id}`;

  //const values=[req.body.id];

  try {
    const result = await s_query(sql, []);

    const name = await user_Details.findOne({
      attributes: ['user_name'],
      where: {
        user_id: req.user.userid
      }
    })
  
    const n_Result=result.map((obj)=>{
      return {...obj,user_Name:name.dataValues.user_name}

    })
    res.json(201,n_Result);
  } catch (error) {
    return res.json(400,{ message: "Somthing went wrong", err: error });
  }

}
exports.assignUser = async (req, res) => {
  try {
    const { id,comment } = req.body;

    // const result = await bid_Envelop.update(obj, {
    //   where: { id: id }
    // })
      
    const result= await task_Tbl.update(
      {
        // assign_User_Id:select_Mapped_User_Id,
        assign_By_Id:req.user.userid,
        comment_By_User:comment
      },{
      where:{id:id},
    });
   

    return res.status(200).send(`${result}`)
    // if(result[0]==1){
    //   //return res.stats(200).send({Message:`you successfullly assign this task to this `})
    //   return res.json(200,{Message:`you successfullly assign this task to this ${obj.select_Mapped_User_Id}`})
    // }else{
    //   return res.json(400,{error:`Allready assign this task to this ${obj.select_Mapped_User_Id} user `})
    // }
  } catch (error) {
    console.log(error,"as");
    return res.json("Error:",`${error}`)
  }


}


exports.view_Status = async (req, res) => {
  let status;
  const { tender_Ref_No } = req.body;
  console.log("jiii")
  const result = await bid_Envelop.findAll({
    attributes: [
      "id",
      'fill_Upload_Annexure',
      'envelope_Type',
      'annexure_NAme',
      'upload_Annexure',
      'fill_Comment',
      'annexure_Submittion_DT'
    ],
    where:{tender_Ref_No:tender_Ref_No,company_Id	:req.user.company_Id}
  });
  const finalResult = await Promise.all(result.map(async (obj) => {
    const result2 = await task_Tbl.findAll({
      attributes: ["assign_User_Id"],
      where: { task_Id_Bid_Envelop: obj.id }
    });
    console.log(result2,"kjlk")
    const arrOfAssignId = await Promise.all(result2.map(async (objN) => {
      const user_Name = await user_Details.findOne({
          attributes: ["user_name"],
          where: { user_id: objN.assign_User_Id }
      })
      console.log(user_Name.dataValues.user_name, "jkjhkj"); // Log user_name for each object
      return user_Name.dataValues.user_name; // Return user_Name object
  }));
    return { ...obj, arrOfAssignId:arrOfAssignId };
  }));
  // })
  const finalResultN = finalResult.map((obj) => {
     return {...obj.dataValues,status:obj.dataValues.fill_Comment?"Done":"Pending",arrOfAssignId:obj.arrOfAssignId}
  });

  return res.status(200).send( finalResultN)

}

exports.my_Annexures = async (req, res) => {
  try {
    const taskData = await task_Tbl.findAll();

    let combinedData = [];

    for (let task of taskData) {
      let rowData = {
        task: task.toJSON()  // Include task details in rowData
      };
 
      if (task.task_Id_Bid_Envelop) {
        const envelopData = await bid_Envelop.findByPk(task.task_Id_Bid_Envelop);
        if (envelopData) {
          rowData.bid_Envelop = envelopData.toJSON();
        }
      }

      if (task.task_Id_Payment_Configuration) {
        const paymentData = await payment_Configuration.findByPk(task.task_Id_Payment_Configuration);
        if (paymentData) {
          rowData.payment_Configuration = paymentData.toJSON();
        }
      }

      combinedData.push(rowData);
    }

    res.status(200).json(combinedData);
  } catch (error) {
    console.error(error);
    return res.status(400).send({ message: "Something went wrong" });
  }
}



// exports.my_Annexures = async (req, res) => {
  

//   try {

//     const taskData=await task_Tbl.findAll();



//    // const result = await s_query(sql, [])
//    console.log(req.user.userid,"jlkjlkj")
//     const result=await payment_Configuration.findAll({
//        where:{fill_Comment:""},
//       include:[
//         {
//           model:task_Tbl,
//           where:{assign_User_Id:req.user.userid,},
//           required:true
          
//         }
//       ]
//     })

    
//    // const result=await bid_Envelop.findAll()
   
//     console.log(result,"jljljlj")
//     return res.status(201).send(result);
   
//   } catch (error) {
//     console.log(error)
//     return res.status(400).send({ message: "Somthing went wrong" });
//   }

// }
exports.select_User = async (req, res) => {
  const tender_Ref_No = req.body.tender_Ref_No;
  const sql = `SELECT user_name FROM tender_mapped_users as t
                 RIGHT JOIN user_details as u
                 on t.m_user_id=u.user_id
                where tender_Ref_No='${tender_Ref_No}' AND created_By=${req.user.userid}`;
  try {
    const result = await s_query(sql, []);
    const departmentNames = result.map((obj) => { return obj.user_name });
    const n_obj = [...new Set(departmentNames)]
    res.status(201).send(n_obj);

  } catch (error) {
    return res.status(400).send({ message: "This user not exist", err: error });
  }
}

exports.get_Department = async (req, res) => {
  const sql = `select department from user_department;`
  try {
    const result = await s_query(sql, []);
    const departmentNames = result.map((item) => { return item.department });
    const obj = [...new Set(departmentNames)]
    res.status(201).send(obj);
  } catch (err) {
    return res.status(400).send({ message: "Somthing went wrong", err: err });
  }
}

