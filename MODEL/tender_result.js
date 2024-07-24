const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
console.log("5");


// Define the TenderResult model
const tender_Result = db2.define('tender_result', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  p_Select_Bidder: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  p_Add_Comment: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  p_Qualified_emd: {
    type: DataTypes.STRING(255),
    allowNull: false,
    defaultValue: 'false'
  },
  p_Qualified_Document: {
    type: DataTypes.STRING(255),
    allowNull: false,
    defaultValue: 'false'
  },
  t_Select_Bidder: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  t_Qualified: {
    type: DataTypes.STRING(255),
    allowNull: false,
    defaultValue: 'No'
  },
  t_Add_Comment: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  f_Select_Bidder: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  f_Qualified: {
    type: DataTypes.STRING(255),
    allowNull: false,
    defaultValue: 'Null'
  },
  f_Add_Comment: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  created_By: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  bidder_id: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  f_amount: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  timestamps: false,
  tableName: 'tender_result'
});

(async () => {
  try {
    await tender_Result.sync();
    console.log("TenderResult DONE");
  } catch (error) {
    console.error("Error syncing TenderResult model with database:", error);
  }
})();

module.exports = tender_Result;
