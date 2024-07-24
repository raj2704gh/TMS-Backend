const mysql = require('mysql');
const db=require("./db_con.JS")
console.log("a2")
const tender_Master=require("../MODEL/tender_Master")




module.exports.is_axist = async(tender_Ref_No) => {
 // console.log(tender_Ref_No,"ooooooooooooooooo")

const result=await tender_Master.count({
  where:{tender_Ref_No:tender_Ref_No}
}
)
return result

  // sql=`SELECT COUNT(*) FROM tender_master where tender_Ref_No=${tender_Ref_No}`
  // value=[];
  
  // db.query(sql,value,(error, results) => {
  //   if (error) {
  //     console.log("00uyuyiuyiyiyiuyiu")
  //     //reject(error);  
  //   } else {
  //     return results
  //   }
  // });
   
};

module.exports.s_query=(sql,value)=> {
  return new Promise((resolve, reject) => {
    db.query(sql,value,(error, results) => {
      if (error) {
        
        reject(error);
      } else {
        
        resolve(results);
      }
    });
  }); 
}


