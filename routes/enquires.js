const express = require("express");
const router = express.Router();
const db = require("../db");

// POST /api/enquiries
router.post("/", (req, res) => {
  const { product_id, name, email, phone = "", message } = req.body;

  if (!product_id || !name || !email || !message) {
    return res.status(400).json({ error: "Missing required fields" });
  }

  const sql = `
    INSERT INTO enquiries (product_id, name, email, phone, message)
    VALUES (?, ?, ?, ?, ?)
  `;

  db.run(sql, [product_id, name, email, phone, message], function (err) {
    if (err) return res.status(500).json({ error: err.message });

    res.json({ success: true, enquiry_id: this.lastID });
  });
});

// GET /api/enquiries (admin only)
router.get("/", (req, res) => {
  db.all(
    "SELECT * FROM enquiries ORDER BY created_at DESC",
    [],
    (err, rows) => {
      if (err) return res.status(500).json({ error: err.message });

      res.json({ enquiries: rows });
    }
  );
});

module.exports = router;
