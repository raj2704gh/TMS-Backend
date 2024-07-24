const { Sequelize, DataTypes } = require('sequelize');
const { db2 } = require("../UTILS/db_con2");
const user_Details = require("../MODEL/user_Details");
//const tender_Pre_Bid=require("./tender_pre_bid")
//const tender_action = require('../MODEL/tender_actions');





const tender_Master = db2.define('tender_master', {

  tender_Ref_No: {
    type: DataTypes.STRING(255),
    primaryKey:true,
    allowNull: false

  },
  tender_ID: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true
  },

  org_Name: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  tender_Details: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  city: {
    type: DataTypes.STRING(100),
    allowNull: true
  },
  state: {
    type: DataTypes.STRING(100),
    allowNull: true
  },
  country: {
    type: DataTypes.STRING(100),
    allowNull: true
  },
  product_category: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  product: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  procurement_type: {
    type: DataTypes.STRING(100),
    allowNull: true
  },
  doc_fees: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: true
  },
  EMD_Fees: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: true
  },
  tender_estimated_cost: {
    type: DataTypes.DECIMAL(15, 2),
    allowNull: true
  },
  quantity: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  contact_Person: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  designation: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  email_id: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  phone_no: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  address: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  source: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  tags: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  publication_date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  submission_date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  pre_bid_submission_date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  pre_bid_meeting_date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  opening_date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  project_end_date: {
    type: DataTypes.DATE,
    allowNull: true
  },
  bid_validity_days: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  project_period_months: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  upload_documents: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  stage: {
    type: DataTypes.STRING(100),
    allowNull: false,
    defaultValue: 'Initial'
  },
  comments: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  created_by: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  created_date: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: DataTypes.NOW
  },
  updated_by: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  updated_date: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  user_id: {
    type: DataTypes.INTEGER,
    //allowNull: false
  },
  f_For_Data: {
    type: DataTypes.BOOLEAN,
    allowNull: false,
    defaultValue: false
  },
  isCorrigendum: {
    type: DataTypes.BOOLEAN,
    defaultValue: false
  },
  isPq: {
    type: DataTypes.BOOLEAN,
    defaultValue: false
  },
  isBoq: {
    type: DataTypes.BOOLEAN,
    defaultValue: false
  },
  isFreetender: {
    type: DataTypes.BOOLEAN,
    defaultValue: false
  },
  userDetailUserId: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  company_Id: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  refund_Date:{
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
    allowNull: true
  }
}, {
  timestamps: false,
  tableName: 'tender_master'
});


//tender_Master.belongsTo(user_Details,{foreignKey:"user_id",targetKey:"user_id"})
//tender_Master.hasOne(tender_action)
//tender_Master.sync();


tender_Master.belongsTo(user_Details,{foreignKey:'user_id'});


(async () => {
  try {
    await tender_Master.sync();
    
    console.log("tender_Master DONE");
  } catch (error) {
    console.error("Error syncing YourModel with database:", error);
  }
})();

module.exports = tender_Master;