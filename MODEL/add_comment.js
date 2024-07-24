const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");


  
  const add_Comment = db2.define('add_comment', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    tender_Ref_No: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    comment_From: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    comment_By: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    commented_D: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    comment: {
      type: DataTypes.STRING(255),
      defaultValue: null
    },
    company_Id:{
          type:DataTypes.STRING(255),
          allowNull:true
    },
    created_By: {
      type: DataTypes.STRING(255),
      allowNull: false
    }
  }, {
    // Define additional options for your model here
    tableName: 'add_comment', // Specify the table name
    timestamps: false // Disable timestamps (createdAt and updatedAt)
  });
  
  //Synchronize the model with the database (create the table if it doesn't exist)
  (async () => {
    try {
      await add_Comment.sync();
      console.log("AddComment DONE");
    } catch (error) {
      console.error("Error syncing AddComment model with database:", error);
    }
  })();
  
  module.exports = add_Comment;