const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");



// Define the TechnicalQualified model
const technical_Qualified = db2.define('technical_qualified', {
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
  technical_Qualified: {
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
  timestamps: false,
  tableName: 'technical_qualified'
});

(async () => {
  try {
    await technical_Qualified.sync();
    console.log("TechnicalQualified DONE");
  } catch (error) {
    console.error("Error syncing TechnicalQualified model with database:", error);
  }
})();

module.exports = technical_Qualified;
