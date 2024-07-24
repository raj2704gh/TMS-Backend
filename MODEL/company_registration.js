const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");

// Define the model for company_registration table
const company_Registration = db2.define('company_registration', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    company_Id: {
      type: DataTypes.STRING,
      allowNull: true
    },
    company_name: {
      type: DataTypes.STRING,
      allowNull: true
    },
    address: {
      type: DataTypes.STRING,
      allowNull: true
    },
    no_of_user: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    expiry_date: {
      type: DataTypes.STRING(20),
    allowNull: true
    },
    subscription_date: {
      type: DataTypes.STRING(20),
      allowNull: true
    },
    subscription_plan: {
      type: DataTypes.DATE,
      allowNull: true
    }
  }, {
    
  // Other model options go here
  tableName: 'company_registration', // Specify the table name if it differs from the model name
  timestamps: false // Disable timestamps (createdAt and updatedAt)
    
  });
  
  // Sync the model with the database
  (async () => {
    await company_Registration.sync();
    console.log("CompanyRegistration DONE");
  })();
  
  // Export the model to be used in your Node.js project
  module.exports = company_Registration;