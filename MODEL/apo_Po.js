const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");


// Define your Sequelize model representing the "apo_po" table



const apo_Po = db2.define('apo_Po', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  select_Apo_Po: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  po_Apo_D: {
    type: DataTypes.DATE,
    allowNull: false
  },
  contract_Value: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  upload_Document: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  comment: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  user_Name: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  status: {
    type: DataTypes.STRING(255),
    allowNull: false,
    defaultValue: 'pending'
  },
  date_Time: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  created_By: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  upload_Po_Apo: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  // Define additional options for your model here
  tableName: 'apo_po', // Specify the table name
  timestamps: false // Disable timestamps (createdAt and updatedAt)
});

// Synchronize the model with the database (create the table if it doesn't exist)
(async () => {
  try {
    await apo_Po.sync();
    console.log("ApoPo DONE");
  } catch (error) {
    console.error("Error syncing ApoPo model with database:", error);
  }
})();

module.exports = apo_Po;
