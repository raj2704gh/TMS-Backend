const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");



// Define the PaymentQualified model
const payment_Qualified = db2.define('payment_Qualified', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  select_Bidder: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  self: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  payment_Qualified: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  add_comment: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  // Other model options go here
  tableName: 'payment_qualified', // Specify the table name if it differs from the model name
  timestamps: false // Disable timestamps (createdAt and updatedAt)
});




//Synchronize the model with the database (create the table if it doesn't exist)
(async () => {
    try {
      await payment_Qualified.sync();
      console.log("payment_Qualified DONE");
    } catch (error) {
      console.error("Error syncing BidEnvelop model with database:", error);
    }
  })();
  
  module.exports = payment_Qualified;
  