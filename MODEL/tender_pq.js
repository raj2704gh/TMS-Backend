const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");

// Define the model for the tender_pq table
const tender_Pq = db2.define('tender_pq', {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
  
    pq_condition: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    pq_status: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    comment: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    upload_doc: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    created_by: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    create_date_time: {
      type: DataTypes.DATE,
      defaultValue: DataTypes.NOW,
      allowNull: true
    },
    updated_by: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    update_date_time: {
      type: DataTypes.STRING(20),
      allowNull:true
    },
    tender_Ref_No: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    user_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    company_Id:{
      type:DataTypes.STRING(255),
      allowNull:true
  }
  }, {
    tableName: 'tender_pq',
    timestamps: false, // Disable timestamps if they are not needed
   // autoIncrement: false
  });

(async () => {
    try {
      await tender_Pq.sync();
      console.log("tenderPq DONE");
    } catch (error) {
      console.error("Error syncing YourModel with database:", error);
    }
  })();


  module.exports=tender_Pq;