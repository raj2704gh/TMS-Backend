
const library_Of_Document=require("../MODEL/library_Of_Document")


exports.all_Files_Add=async(req,res)=>{
    

    try {
        
    const paths = req.files ? req.files.map((obj) => { return obj.path }).join(","):"";
   
    const m_Obj = { ...req.body, file_Path: paths,user_Id:req.user.userid };
    const result = await library_Of_Document.create(m_Obj)
    return res.status(200).send({message:"add data successfully"})
        
    } catch (error) {
        return res.status(400).send({messsage:"somthing went wrong",err:error})
    }

}

exports.all_Files_view=async(req,res)=>{
    const {file_Name,category}=req.body;
    try {
        const result = await library_Of_Document.findAll({
            where: {
                file_Name:file_Name,
                category: category // Add your where condition here
            }
        });
        return res.status(200).send(result)
    } catch (error) {
        return res.status(400).send({Message:"Somthing went wrong"})
    }
}

