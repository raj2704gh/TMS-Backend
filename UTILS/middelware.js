const jwt = require('jsonwebtoken');
const axios = require('axios');
const mysql = require('mysql');
const {s_query}=require("./function")

module.exports.verifyToken = async (req, res, next) => {
  
  var token = req.header('Authorization');

  // Check if token is present
  if (!token) {
    return res.status(401).json({ error: 'Unauthorized - Missing token' });
  }

  // Check if token is blacklisted
  const sql = `SELECT token FROM blacklisted_tokens`;
  try {
    const result = await s_query(sql, []);
    const blacklistedTokens = result.map((obj) => obj.token);

    if (blacklistedTokens.includes(token)) {
      return res.status(400).json({ message: "Please login again" });
    }
  } catch (error) {
    console.error('MySQL query error:', error.message);
    return res.status(400).json({ message: "Something went wrong", err: error });
  }

  // Proceed with token verification
  const tokenf = token.split(' ')[1];
  jwt.verify(tokenf, process.env.JWT_SECRET, (err, decoded) => {
    if (err) {
      console.error('JWT verification error:', err);
      return res.status(401).json({ error: 'Unauthorized - Invalid token' });
    }
    req.user = decoded;
    
    // Add tender id in local
    const sql1 = `SELECT tender_ID FROM tender_master ORDER BY tender_ID DESC LIMIT 1`;
    s_query(sql1, [])
      .then((result) => {
        const lastTenderId = result.length > 0 ? result[0].tender_ID : 111111;
        req.lastTenderId = lastTenderId;
        next(); // Call next() here to continue middleware chain
      })
      .catch((err) => {
        console.error('MySQL query error:', err.message);
        return res.status(500).json({ message: 'Internal server error' });
      });
  });
};









module.exports.fetch_Live_Data = async (req, res,next) => {
  try {
    const postData = {
      email: "rakadi7782@buzblox.com",
      Password: "w7bCq9",
      MACAddress: "",
      Hosturl: "https://registration.tendertiger.co.in/",
      DomainUrl: "tendertiger.co.in",
      KeepLoggedIn: 0
    };

    const loginConfig = {
      headers: {
        'Content-Type': 'application/json',
      },
    };

    const loginResponse = await axios.post('https://registration.tendertiger.co.in/api/Registration/Login', postData, loginConfig);
    
    
    const Token = 'Bearer ' + loginResponse.data.Token;

    const searchData = {
      "searchkeyword": "road",
      "tabindex": 1,
      // rest of the searchData
    };

    const searchConfig = {
      headers: {
        'Content-Type': 'application/json',
        'Authorization': Token
      },
    };
    const searchResponse = await axios.post('https://tendersearch.tendertiger.co.in/api/Tender/GetTendersList', searchData, searchConfig);
    
    
    // Handle the response data
  } catch (error) {
    console.error('Error:', error);
    // Handle errors
  }
}

//a


  
