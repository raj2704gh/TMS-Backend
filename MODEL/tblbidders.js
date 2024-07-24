const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");





// Define the TblBidders model
const tbl_Bidders = db2.define('tblbidders', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tender_Id: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  bidder_name: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  tender_ref_no: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  is_payment_quilified: {
    type: DataTypes.BOOLEAN,
    defaultValue: false
  },
  is_financial_qualified: {
    type: DataTypes.BOOLEAN,
    defaultValue: false
  },
  is_technical_qualified: {
    type: DataTypes.BOOLEAN,
    defaultValue: false
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  timestamps: false,
  tableName: 'tblbidders'
});

(async () => {
  try {
    await tbl_Bidders.sync();
    console.log("TblBidders DONE");
  } catch (error) {
    console.error("Error syncing TblBidders model with database:", error);
  }
})();

module.exports = tbl_Bidders;
