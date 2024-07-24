const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");


// Define the model for financial_limit table
const financial_Limit = db2.define('financial_limit', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    max_Limit: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    min_Limit: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    created_By: {
      type: DataTypes.STRING,
      allowNull: false
    },
    company_Id:{
      type:DataTypes.STRING(255),
      allowNull:true
  }
  }, {
    // Other options like timestamps, underscored, etc.
    tableName: 'financial_limit', // Specify the table name if it differs from the model name
    timestamps: false // Disable timestamps (createdAt and updatedAt)
  });
  
  //Sync the model with the database
  (async () => {
    await financial_Limit.sync();
    console.log("FinancialLimit DONE");
  })();
  
  // Export the model to be used in your Node.js project
  module.exports = financial_Limit;