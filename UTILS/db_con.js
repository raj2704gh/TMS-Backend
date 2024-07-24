const mysql = require('mysql');
const appRoot = require('app-root-path');
const dotenv = require('dotenv').config({ path: `${appRoot}/.env` });

const pool = mysql.createPool({
      host: process.env.DB_HOST,
      user:process.env.DB_USER,
      password:process.env.DB_PASSWORD,
      database:process.env.DB_NAME,
      port: process.env.DB_PORT,
      
      connectionLimit: 10, // Adjust as per your requirement
  });

  module.exports = pool;

  //a