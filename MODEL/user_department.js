const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");

console.log("3")


// Define the UserDepartment model
const user_Department = db2.define('user_department', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  department: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  description: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  created_By: {
    type: DataTypes.STRING(255),
    allowNull: false
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  timestamps: false,
  tableName: 'user_department'
});

(async () => {
  try {
    await user_Department.sync();
    console.log("User_Department DONE");
  } catch (error) {
    console.error("Error syncing UserDepartment model with database:", error);
  }
})();

module.exports = user_Department;
