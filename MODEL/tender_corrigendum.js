const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
const user_Details=require("./user_Details");
const tender_Master=require("./tender_Master")



// Define the TenderCorrigendum model
const tender_Corrigendum = db2.define('tender_corrigendum', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  corrigendum_text: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  documents: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  new_submission_date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  created_by: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  create_date_time: {
    type: DataTypes.DATE,
    defaultValue:DataTypes.NOW,
    allowNull: true
  },
  updated_by: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  update_date_time: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    allowNull: true,
    references:{
      model:tender_Master,
      key:"tender_Ref_No"
    }
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  timestamps: false,
  tableName: 'tender_corrigendum'
});

// // Define foreign key constraints
tender_Corrigendum.belongsTo(tender_Master, { foreignKey: 'tender_Ref_No', targetKey: 'tender_Ref_No' });
 tender_Corrigendum.belongsTo(user_Details, { foreignKey: 'created_by', targetKey: 'user_id' });
// tender_Corrigendum.belongsTo(user_Details, { foreignKey: 'updated_by', targetKey: 'user_id' });
 

(async () => {
  try {
    await tender_Corrigendum.sync();
    console.log("TenderCorrigendum DONE");
  } catch (error) {
    console.error("Error syncing TenderCorrigendum model with database:", error);
  }
})();

module.exports = tender_Corrigendum;
