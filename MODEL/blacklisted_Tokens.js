const { Sequelize, DataTypes } = require('sequelize');
const {db2} =require("../UTILS/db_con2");


//

// Define the BlacklistedToken model
const blacklisted_Token = db2.define('blacklisted_token', {
    id:{
        type:DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey:true
    },
  token: {
    type: DataTypes.STRING(255),
    allowNull: false,
    primaryKey: true
  },
   invalidated_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: Sequelize.literal('CURRENT_TIMESTAMP')
  },
  company_Id:{
    type:DataTypes.STRING(255),
    allowNull:true
}
}, {
  tableName: 'blacklisted_Tokens', // Specify the table name
  timestamps: false // Disable timestamps (createdAt and updatedAt)
});


// Synchronize the model with the database (create the table if it doesn't exist)
(async () => {
    try {
      await blacklisted_Token.sync();
      console.log("blacklist DONE");
    } catch (error) {
      console.error("Error syncing BidEnvelop model with database:", error);
    }
  })();

// Export the BlacklistedToken model
module.exports = blacklisted_Token;
