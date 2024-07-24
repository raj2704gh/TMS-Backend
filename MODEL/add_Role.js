const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");



const add_Role = db2.define('add_role', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  role: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  created_By: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  // Define additional options for your model here
  tableName: 'add_role', // Specify the table name
  timestamps: false // Disable timestamps (createdAt and updatedAt)
});


//add_Role.sync();
// Synchronize the model with the database (create the table if it doesn't exist)
(async () => {
  try {
    await add_Role.sync();
    console.log("AddRole DONE");
  } catch (error) {
    console.error("Error syncing AddRole model with database:", error);
  }
})();

module.exports = add_Role;
