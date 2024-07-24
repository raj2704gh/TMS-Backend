const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
console.log("1");
const bid_Envelop=require("../MODEL/bid_Envelop")
const user_Details=require("../MODEL/user_Details")
const payment_Configuration=require("../MODEL/payment_configurations")



const task_Tbl=db2.define("task_Tbl",{
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      task_Id_Bid_Envelop: {
        type: DataTypes.INTEGER,
        allowNull: true,
        references: {
            model: bid_Envelop, // Model name as a string
            key: 'id'
        }
    },
    task_Id_Payment_Configuration: {
        type: DataTypes.INTEGER,
        allowNull: true,
        references: {
            model: payment_Configuration, // Model name as a string
            key: 'id'
        }
    },
    
    assign_User_Id:{
        type:DataTypes.INTEGER,
        references:{
            model:user_Details,
            key:"user_id"
        }
    } ,
    assign_By_Id:{
        type:DataTypes.INTEGER,
        allowNull:false
    },
    comment_By_User:{
      type:DataTypes.STRING,
      allowNull:true
    },
    status:{
        type:DataTypes.BOOLEAN,
        allowNull:true
    }
},
{
    // Define additional options for your model here
    tableName: 'task_Tbl', // Specify the table name
    timestamps: false // Disable timestamps (createdAt and updatedAt)
  });
  task_Tbl.belongsTo(bid_Envelop, { foreignKey: 'task_Id_Bid_Envelop', targetKey:"id" }); 
  task_Tbl.belongsTo(payment_Configuration, { foreignKey: 'task_Id_Payment_Configuration', targetKey:"id" }); 

  
 console.log("__________________________________________________________________")

  task_Tbl.sync()
  .then(()=>{
    console.log("task_Tbl done")
  }).catch((err)=>{
    console.log("Table not create",err)
  })
  
 

  module.exports = task_Tbl;