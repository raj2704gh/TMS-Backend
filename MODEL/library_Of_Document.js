const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
const user_Details=require("./user_Details")


  
  const library_Of_Document = db2.define("library_Of_Document",{
    id:{
        type:DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    file_Name:{
       type:DataTypes.STRING(255),
       allowNull:true
    },
    category:{
        type:DataTypes.STRING(255),
        allowNull:false
    },
    uploaded_Date:{
        type:DataTypes.DATE,
        defaultValue: Sequelize.literal('current_timestamp()')
    },
    file_Path:{
        type:DataTypes.STRING(500),
        allowNull:false
    },
    user_Id:{
      type:DataTypes.INTEGER,
      allowNull:false
    },
    company_Id:{
      type:DataTypes.STRING(255),
      allowNull:true
  }
},
{
  tableName:"library_Of_Document",
  timestamps:false
});

library_Of_Document.belongsTo(user_Details,{foreignKey:'user_Id'});

(async () => {
  try {
    await library_Of_Document.sync();
    console.log("library_Of_Document  DONE");
  } catch (error) {
    console.error("Error syncing AddRole model with database:", error);
  }
})();
  
  module.exports = library_Of_Document;