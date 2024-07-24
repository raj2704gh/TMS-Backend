const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
const payment_Configuration=require("./payment_configurations")



// Define the MakePayment model
const make_Payment = db2.define('make_payment', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  remainning_for_SD: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  add_Bank: {
    type: DataTypes.ENUM('SBI', 'BOI', 'Axis'),
    allowNull: true
  },
  transaction_Number: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  transaction_Date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  Date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  comment: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  c_Id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references:{
      model:payment_Configuration,
      key:"id"
    }
  },
  created_By: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  upload_document: {
    type: DataTypes.STRING,
    allowNull: true
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  timestamps: false, // Disable timestamps
  tableName: 'make_payment' // Set custom table name if necessary
});

// Define foreign key constraint
make_Payment.belongsTo(payment_Configuration, { foreignKey: 'c_Id' }); // Replace `YourOtherModel` with the actual model name

(async () => {
    try {
      await make_Payment.sync();
      console.log("make_Payment DONE");
    } catch (error) {
      console.error("Error syncing AddRole model with database:", error);
    }
  })();

// Export the model
module.exports = make_Payment;
