const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
const user_Details=require("../MODEL/user_Details");
const tender_master=require("./tender_Master")
// Define the model for the tender_mapped_users table
const  tender_mapped_user= db2.define('tender_mapped_user', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    allowNull: false,
    references:{
      model:tender_master,
      key:"tender_Ref_No"
    }
  },

  m_user_id: {
    type: DataTypes.INTEGER(11),
    allowNull: false
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  tableName: 'tender_mapped_users',
  timestamps: false // Assuming the table doesn't have timestamps
});

// Define associations
tender_mapped_user.belongsTo(user_Details, { foreignKey: 'm_user_id', targetKey: 'user_id' });
tender_mapped_user.belongsTo(tender_master, { foreignKey: 'tender_Ref_No', targetKey: 'tender_Ref_No' });




// Synchronize the model with the database (create the table if it doesn't exist)
(async () => {
    try {
      await tender_mapped_user.sync();
      console.log("tender_Mapped_User ggggggggggggggggggggggggggggggggggggggggggggggggggggggg DONE");
    } catch (error) {
      console.error("Error syncing BidEnvelop model with database:", error);
    }
  })();
  
  module.exports = tender_mapped_user;
  