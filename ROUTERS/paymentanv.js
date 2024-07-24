const express = require('express');
const multer = require('multer');
const jwt = require('jsonwebtoken');
const mysql = require('mysql');

const router = express.Router();

// Set up MySQL connection
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME
});

// Multer storage configuration
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, './public/uploads/');
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + '-' + file.originalname ); 
  }
});

// Init upload
const upload = multer({
  storage: storage,
  limits: { fileSize: 1000000000} 
}).array('upload_doc',5); // Change to 'single' if only one file is uploaded at a time

// Middleware for token verification
const verifyToken = (req, res, next) => {
  const token = req.header('Authorization');

  if (!token) {
    return res.status(401).json({ error: 'Unauthorized - Missing token' });
  }

  const tokenf = token.split(' ')[1];
  jwt.verify(tokenf, process.env.JWT_SECRET, (err, decoded) => {
    if (err) {
      console.error('JWT verification error:', err);
      return res.status(401).json({ error: 'Unauthorized - Invalid token' });
    }

    req.user = decoded;
    console.log('Decoded JWT:', decoded);

    next();
  });
};

// API endpoint for adding payment configuration
router.post('/tender_payment_config', verifyToken, (req, res) => {
  upload(req, res, (err) => {
    if (err instanceof multer.MulterError) {
      // Multer error
      console.error('Multer error:', err);
      return res.status(400).json({ error: 'Failed to upload file', details: err.message });
    } else if (err) {
      // Other error
      console.error('Upload error:', err);
      return res.status(500).json({ error: 'Internal server error', details: err.message });
    }

    // If file upload is successful
    const {
      type_of_payment_envelope,
      status,
      currency,
      amount,
      payment_option,
      add_details,
      required_before_date,
      comments,
      tender_Ref_No
    } = req.body;

    // Check if tender number already exists
    const checkQuery = 'SELECT COUNT(*) AS count FROM tender_payment_envelope WHERE tender_Ref_No = ?';
    db.query(checkQuery, [tender_Ref_No], (checkErr, checkResult) => {
      if (checkErr) {
        console.error('Error checking tender number:', checkErr);
        return res.status(500).json({ error: 'Failed to check tender number' });
      }

      if (checkResult[0].count > 0) {
        // Tender number already exists, return error
        return res.status(400).json({ error: 'Tender number already exists' });
      }

      // Tender number does not exist, proceed with insertion
      const Upload_docs = req.files.map(file => file.path);
      const Upload_doc = Upload_docs.join(',');

      const created_by = req.user.userid;
      const create_date_time = new Date(); 

      const sql = `INSERT INTO tender_payment_envelope (type_of_payment_envelope, status, currency, amount, payment_option, add_details, required_before_date, documents, comments, created_by, create_date_time, tender_Ref_No) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
      const values = [
        type_of_payment_envelope,
        status,
        currency,
        amount,
        payment_option,
        add_details,
        required_before_date,
        Upload_doc,
        comments,
        created_by,
        create_date_time,
        tender_Ref_No
      ];

      db.query(sql, values, (insertErr, result) => {
        if (insertErr) {
          console.error('SQL error:', insertErr);
          res.status(500).json({ error: 'Failed to add payment configuration' });
        } else {
          console.log('Payment configuration added');
          res.status(201).json({ message: 'Payment configuration added' });
        }
      });
    });
  });
});



//add emd data
router.put('/update_emd_details', verifyToken, (req, res) => {
  const {
    tender_Ref_No,
    emd_bank_name,
    emd_transaction_number,
    emd_transaction_date,
    emd_comment
  } = req.body;

  // Validate that tender_Ref_No is provided in the request body
  if (!tender_Ref_No) {
    return res.status(400).json({ error: 'Tender reference number (tender_Ref_No) is required' });
  }

  // SQL query to update EMD details in the database
  const sql = `
    UPDATE tender_payment_envelope 
    SET 
      emd_bank_name = ?,
      emd_transaction_number = ?,
      emd_transaction_date = ?,
      emd_comment = ?
    WHERE tender_Ref_No = ?
  `;

  const values = [
    emd_bank_name,
    emd_transaction_number,
    emd_transaction_date,
    emd_comment,
    tender_Ref_No
  ];

  // Execute the SQL query
  db.query(sql, values, (err, result) => {
    if (err) {
      console.error('SQL error:', err);
      res.status(500).json({ error: 'Failed to update EMD details' });
    } else {
      console.log('EMD details updated successfully');
      res.status(200).json({ message: 'EMD details updated successfully' });
    }
  });
});


//api for document fees 

router.post('/update_document_fee', verifyToken, (req, res) => {
  const {
    docfee_bank_name,
    docfee_transaction_number,
    docfee_transaction_date,
    docfee_comment,
    tender_Ref_No
  } = req.body;

  const sql = `UPDATE tender_payment_envelope 
               SET docfee_bank_name = ?, 
                   docfee_transaction_number = ?, 
                  docfee_transaction_date = ?, 
                   docfee_comment = ? 
               WHERE tender_Ref_No = ?`;

  const values = [
    docfee_bank_name,
    docfee_transaction_number,
    docfee_transaction_date,
    docfee_comment,
    tender_Ref_No
  ];

  db.query(sql, values, (err, result) => {
    if (err) {
      console.error('SQL error:', err);
      res.status(500).json({ error: 'Failed to update document fee information' });
    } else {
      console.log('Document fee information updated');
      res.status(200).json({ message: 'Document fee information updated' });
    }
  });
});


//sd api
router.post('/tender_payment_sd', verifyToken, (req, res) => {
  const {
    tender_Ref_No,
    sd_bank_name,
    sd_transaction_number,
    sd_transaction_date,
    sd_comment
  } = req.body;

  const updated_by = req.user.userid;
  const update_date_time = new Date();

  const sql = `UPDATE tender_payment_envelope SET
                sd_bank_name = ?,
                sd_transaction_number = ?,
                sd_transaction_date = ?,
                sd_comment = ?,
                updated_by = ?,
                update_date_time = ?
              WHERE tender_Ref_No = ?`;

  const values = [
    sd_bank_name,
    sd_transaction_number,
    sd_transaction_date,
    sd_comment,
    updated_by,
    update_date_time,
    tender_Ref_No
  ];

  db.query(sql, values, (err, result) => {
    if (err) {
      console.error('SQL error:', err);
      res.status(500).json({ error: 'Failed to update SD details' });
    } else {
      console.log('SD details updated');
      res.status(200).json({ message: 'SD details updated' });
    }
  });
});


// GET All Data API
router.get('/all_data', verifyToken, (req, res) => {
  const sql = 'SELECT * FROM tender_payment_envelope';
  db.query(sql, (err, result) => {
    if (err) {
      console.error('SQL error:', err);
      res.status(500).json({ error: 'Failed to retrieve data' });
    } else {
      res.status(200).json(result);
    }
  });
});

// GET EMD Data API
router.get('/emd_data', verifyToken, (req, res) => {
  const sql = 'SELECT * FROM tender_payment_envelope WHERE type_of_payment_envelope = "EMD"';
  db.query(sql, (err, result) => {
    if (err) {
      console.error('SQL error:', err);
      res.status(500).json({ error: 'Failed to retrieve EMD data' });
    } else {
      res.status(200).json(result);
    }
  });
});

// GET SD Data API
router.get('/sd_data', verifyToken, (req, res) => {
  const sql = 'SELECT * FROM tender_payment_envelope WHERE type_of_payment_envelope = "SD"';
  db.query(sql, (err, result) => {
    if (err) {
      console.error('SQL error:', err);
      res.status(500).json({ error: 'Failed to retrieve SD data' });
    } else {
      res.status(200).json(result);
    }
  });
});



module.exports = router;
