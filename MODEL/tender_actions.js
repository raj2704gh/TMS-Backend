const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
const tender_Master = require('./tender_Master');
const user_Details = require('./user_Details');





// Define the model for tender_actions table
const tender_action = db2.define('tender_actions', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  tender_Ref_No: {
    type: DataTypes.STRING,
    allowNull: false,
    references:{
      model:tender_Master,
      key:"tender_Ref_No"
    }
  },

  user_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  reason: {
    type: DataTypes.TEXT,
    defaultValue: null,
  },
  comment: {
    type: DataTypes.TEXT,
    defaultValue: null,
  },
  likes: {
    type: DataTypes.BOOLEAN,
    defaultValue: null,
  },
  i_want: {
    type: DataTypes.STRING,
    defaultValue: null,
  },
  favorite: {
    type: DataTypes.BOOLEAN,
    defaultValue: false,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
    allowNull: true
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  tableName: 'tender_actions',
  timestamps: false, // Disable timestamps
});

tender_action.belongsTo(user_Details,{foreignKey:'user_id'});
tender_action.belongsTo(tender_Master,{foreignKey:"tender_Ref_No",targetKey:"tender_Ref_No"})
//tender_Pre_Bid.belongsTo(tender_Master, { foreignKey: 'tender_Ref_No',targetKey:"tender_Ref_No"});

tender_action.sync().then(()=>{"DONE"}).catch((err)=>{"error"})
// (async () => {
//     try {
//       await tender_action.sync();
//       console.log("teble action  sssssssssssssssssssssssssssssssssssssssssssssssssssssss DONE");
//     } catch (error) {
//       console.error("Error syncing BidEnvelop model with database:", error);
//     }
//   })();
  //tender_action.belongsTo(tender_Master,{foreignKey})
  
  
  



  module.exports = tender_action;
