const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
const tender_Pq=require("./tender_pq.JS")



// Define the model for the sub_coment table
const sub_Comment = db2.define('sub_coment', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    q_Id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'tender_pq',
        key: 'id'
      }
    },
  
    s_comment: {
      type: DataTypes.STRING,
      allowNull: false
    },
    date_Time: {
      type: DataTypes.DATE,
      defaultValue: DataTypes.NOW,
      allowNull: true
    },
    document: {
      type: DataTypes.STRING,
      allowNull: false
    },
    s_Comment_By: {
      type: DataTypes.STRING,
      allowNull: false
    },
    company_Id:{
      type:DataTypes.STRING(255),
      allowNull:true
  }
  }, {
    tableName: 'sub_coment', // Make sure Sequelize knows which table to map to
    timestamps: false // If you don't want Sequelize to handle timestamps
  });
  

  sub_Comment.belongsTo(tender_Pq, { foreignKey: 'q_Id', targetKey: 'id' });
  
(async () => {
    try {
      await sub_Comment.sync();
      console.log("sub_Comment DONE");
    } catch (error) {
      console.error("Error syncing BidEnvelop model with database:", error);
    }
  })();


  module.exports=sub_Comment;