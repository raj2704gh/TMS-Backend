const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
const tender_Master = require('./tender_Master');




// Define the TenderPreBid model
const tender_Pre_Bid = db2.define('tender_pre_bid', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  date_and_time: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  company_name: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  page_number: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  paragraph_number: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  paragraph_content: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  question: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  documents: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  status: {
    type: DataTypes.STRING(50),
    allowNull: true
  },
  revise_content: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  govt_reply: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  is_doc_paid: {
    type: DataTypes.BOOLEAN,
    allowNull: true
  },
  created_by: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  create_date_time: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
    allowNull: true
  },
  updated_by: {
    type: DataTypes.INTEGER,
    allowNull: true
  },
  update_date_time: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    allowNull: true,
    references:{
      model:tender_Master,
      key:"tender_Ref_No"
    }
  },
  by_company: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  p_user: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
},  
checkquery:{
  type:DataTypes.STRING(255),
  allowNull: true
},
paratitle:{
  type:DataTypes.STRING(255),
  allowNull:true
}
}, {
  timestamps: false,
  tableName: 'tender_pre_bid'
});

tender_Pre_Bid.belongsTo(tender_Master, { foreignKey: 'tender_Ref_No',targetKey:"tender_Ref_No"});

(async () => {
  try {
    await tender_Pre_Bid.sync();
    console.log("TenderPreBid iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii DONE");
  } catch (error) {
    console.error("Error syncing TenderPreBid model with database:", error);
  }
})();

module.exports =tender_Pre_Bid;
