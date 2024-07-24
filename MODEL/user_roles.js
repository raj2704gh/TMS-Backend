const { DataTypes } = require('sequelize');
const { db2 } = require('../UTILS/db_con2'); // Adjust the import path as per your setup
const user_Details=require("../MODEL/user_Details");
console.log("4");

const user_Roles = db2.define('user_roles', {
    user_role_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    user_id: {
        type: DataTypes.INTEGER,
        allowNull: false, // Adjust allowNull based on your requirements
        references: {
            model: user_Details, // Assuming 'user_details' is the name of the referenced table
            key: 'user_id'
        }
    },
    Pq_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    Pq_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    apo_po_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    apo_po_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    apo_po_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    apo_po_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    apo_po_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    cms_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    cms_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    cms_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    cms_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    cms_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    corrigendum_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    corrigendum_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    corrigendum_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    corrigendum_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    corrigendum_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    envelope_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    envelope_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    envelope_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    envelope_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    envelope_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    negotiation_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    negotiation_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    negotiation_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    negotiation_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    negotiation_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    payment_envelope_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    payment_envelope_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    payment_envelope_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    payment_envelope_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    payment_envelope_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    pq_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    pq_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    pq_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    pq_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    pre_bid_round_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    pre_bid_round_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    pre_bid_round_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    pre_bid_round_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    pre_bid_round_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_result_Approval: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_result_Create: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_result_Delete: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_result_Edit: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    },
    tender_result_Reject: {
        type: DataTypes.BOOLEAN,
        allowNull: true // Allow NULL if necessary
    }
}, {
    tableName: 'user_roles',
    timestamps: false // Assuming timestamps are not needed for this table
});

user_Roles.sync()
.then(()=>{
  console.log("user_Role table save successfully")
})
.catch((err)=>{
  console.log("User table not save ",err)
})

module.exports = user_Roles;
