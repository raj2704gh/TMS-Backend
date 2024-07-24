const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");





const negotiation = db2.define('negotiation', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  select_Envelop: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  post_Question: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  reply_Deadline: {
    type: DataTypes.DATE,
    allowNull: true
  },
  attach_Query_Document: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  current_DT: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
    allowNull: true
  },
  created_By: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  r_comment: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  r_Attachment_Query_Document: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  tableName: 'negotiation',
  timestamps: false
});


(async () => {
    try {
      await negotiation.sync();
      console.log("negotiation DONE");
    } catch (error) {
      console.error("Error syncing AddRole model with database:", error);
    }
  })();
  


module.exports = negotiation;
