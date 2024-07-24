const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");
console.log("10")

const source=db2.define("source",{
    id:{
        type:DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    login_Url:{
        type:DataTypes.STRING(400),
        allowNull: true
    },
    password:{
        type:DataTypes.STRING(255),
        allowNull: true
    },
    user_Name:{
        type:DataTypes.STRING(255),
        allowNull: true
    },
    date:{
        type: DataTypes.STRING(255),
        defaultValue: Sequelize.literal('current_timestamp()'),
        allowNull: true
    },
    company_Id:{
      type:DataTypes.STRING(255),
      allowNull:true
  }
    
},{
    tableName:"source",
    timestamps: false 
});


(async () => {
    try {
      await source.sync();
      console.log("Source DONE");
    } catch (error) {
      console.error("Error syncing BidEnvelop model with database:", error);
    }
  })();


  module.exports=source;