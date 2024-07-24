const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
//const task_Tbl=require("../MODEL/task_Tbl")

const payment_Configuration = db2.define('payment_configuration', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  select_type: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  payment_Type: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  payment_Mode: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  currency: {
    type: DataTypes.ENUM('INR', 'USD'),
    defaultValue: null
  },
  amount: {
    type: DataTypes.DECIMAL(10, 2),
    defaultValue: null
  },
  online_Option: {
    type: DataTypes.ENUM('UPI', 'oNLINE BANK TEANSFER'),
    defaultValue: null
  },
  add_Detail: {
    type: DataTypes.TEXT,
    defaultValue: null
  },
  required_Before: {
    type: DataTypes.DATE,
    defaultValue: null
  },
  upload_Document: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  comment: {
    type: DataTypes.TEXT,
    defaultValue: null
  },
  status: {
    type: DataTypes.STRING(255),
    defaultValue: 'pending'
  },
  created_By: {
    type: DataTypes.INTEGER,
    defaultValue: null
  },
  refund_Date: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  // Other model options go here
  tableName: 'payment_configurations', // Specify the table name if it differs from the model name
  timestamps: false // Disable timestamps (createdAt and updatedAt)
});

// Export the PaymentConfiguration model
//module.exports = payment_Configuration;
// payment_Configuration.hasMany(task_Tbl,{
//   foreignKey:"task_Id",  
//   sourceKey:"id"
//  })

// Synchronize the model with the database (create the table if it doesn't exist)
(async () => {
    try {
      await payment_Configuration.sync();
      console.log("payment_Configuration DONE");
    } catch (error) {
      console.error("Error syncing AddRole model with database:", error);
    }
  })();
  
  module.exports = payment_Configuration;
  