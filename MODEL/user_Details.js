const { Sequelize, DataTypes, Model } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
//const tender_Master = require('./tender_Master');
console.log("3");

console.log("3");
const user_Roles=require("../MODEL/user_roles")





const user_Details = db2.define('user_details', {
    user_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    user_name: {
      type: DataTypes.STRING,
      allowNull: false
    },
    phone_number: {
      type: DataTypes.STRING(10),
      allowNull: false
    },
    email_id: {
      type: DataTypes.STRING,
      allowNull: false
    },
    role: {
      type: DataTypes.STRING
    },
    Financial_limit: {
      type: DataTypes.STRING
    },
    department: {
      type: DataTypes.STRING
    },
    Emploee_level: {
      type: DataTypes.STRING
    },
    user_password: {
      type: DataTypes.STRING,
      allowNull: false
    },
    created_by: {
      type: DataTypes.STRING
    },
    create_date_time: {
      type: DataTypes.DATE,
      defaultValue: DataTypes.NOW
    },
    updated_by: {
      type: DataTypes.STRING
    },
    update_date_time: {
      type: DataTypes.STRING(20),
      allowNull:true
      
    },
    company_Id:{
      type:DataTypes.STRING,
      allowNull:true
  },
  otp:{
    type:DataTypes.STRING(20),
    allowNull:true
  }
  }, {
    tableName: 'user_details',
    timestamps: false // Assuming timestamps are already provided in the table
  });

  //user_Details.hasMany(tender_Master);
  user_Details.hasMany(user_Roles, {
    foreignKey: 'user_id', // This should match the field in user_roles that references user_details
    sourceKey: 'user_id' // This should match the primary key in user_details
});
console.log("5")


user_Details.sync()
.then(()=>{
  console.log("user_Details table save successfully")
})
.catch((err)=>{
  console.log("User table not save ",err)
})



  module.exports = user_Details;