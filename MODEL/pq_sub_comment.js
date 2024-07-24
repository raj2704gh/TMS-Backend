const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");


// Define the model for the pq_sub_comment table
const pq_Sub_Comment = db2.define('pq_sub_comment', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    comment: {
      type: DataTypes.STRING,
      allowNull: true
    },
    pq_Id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    company_Id:{
      type:DataTypes.STRING(255),
      allowNull:true
  }

  }, {
    tableName: 'pq_sub_comment', // Make sure Sequelize knows which table to map to
    timestamps: false // If you don't want Sequelize to handle timestamps
  });
  



(async () => {
    try {
      await pq_Sub_Comment.sync();
      console.log("pq_Sub_Comment DONE");
    } catch (error) {
      console.error("Error syncing BidEnvelop model with database:", error);
    }
  })();


  module.exports=pq_Sub_Comment;