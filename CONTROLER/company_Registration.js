const company_Registration=require("../MODEL/company_registration")


exports.view=async(req,res)=>{
try {
    const result=await company_Registration.findAll();
    
    if(result){
     return res.status(200).send(result);
    }else{
     return res.status(400).send({Message:"Data not found"})
    }
} catch (error) {
    return res.status.send({Message:"something went wrong",err:error})
}
}