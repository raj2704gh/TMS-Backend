const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");


console.log("2");

// Define your Sequelize model representing the "bid_envelop" table
const bid_Envelop = db2.define('bid_Envelop', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  tender_Ref_No: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  envelope_Type: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  annexure_Name: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  upload_Annexure: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  department: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  select_Mapped_User_Id: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  comment: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  annexure_Submittion_DT: {
    type: DataTypes.STRING(20),
    allowNull: true
  },
  created_By: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  fill_Comment: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  fill_Date_Time_Upload: {
    type: DataTypes.STRING(255),
    allowNull: true
  },
  fill_Upload_Annexure: {
    type: DataTypes.STRING(255),
    defaultValue: null
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  // Define additional options for your model here
  tableName: 'bid_envelop', // Specify the table name
  timestamps: false // Disable timestamps (createdAt and updatedAt)
});





// bid_Envelop.hasMany(() => db2.models['task_Tbl'], {
//   foreignKey: 'task_Id_Bid_Envelop',  
//   sourceKey: 'id'
// });



bid_Envelop.sync()
.then(()=>{
  console.log("user_Details table save successfully")
})
.catch((err)=>{
  console.log("User table not save ",err)
})
// const task_Tbl = require('./task_Tbl');
// bid_Envelop.hasMany(task_Tbl,{foreignKey:"task_Id",sourceKey:"id"})
module.exports = bid_Envelop;
