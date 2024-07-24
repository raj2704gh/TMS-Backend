const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");



// Define the CMS model
const cms = db2.define('cms', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  select_Milestone: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  add_Milestone: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  add_Milestone_Desc: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  attach_Document: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  add_Completion_DT: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  created_By: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  tableName: 'cms', // Specify the table name
  timestamps: false // Disable timestamps (createdAt and updatedAt)
});


// Synchronize the model with the database (create the table if it doesn't exist)
(async () => {
    try {
      await cms.sync();
      console.log("cms DONE");
    } catch (error) {
      console.error("Error syncing BidEnvelop model with database:", error);
    }
  })();
// Export the CMS model
module.exports = cms;
