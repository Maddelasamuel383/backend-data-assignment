const express = require("express");
const router = express.Router();
const db = require("../db");

// GET /api/products  (with search, category, pagination)
router.get("/", (req, res) => {
  const { search = "", category = "", page = 1, limit = 10 } = req.query;
  const offset = (page - 1) * limit;

  let sql = "SELECT * FROM products WHERE 1=1";
  const params = [];

  if (search) {
    sql += " AND (name LIKE ? OR short_desc LIKE ?)";
    params.push(`%${search}%`, `%${search}%`);
  }

  if (category) {
    sql += " AND category = ?";
    params.push(category);
  }

  sql += " ORDER BY created_at DESC LIMIT ? OFFSET ?";
  params.push(Number(limit), Number(offset));

  db.all(sql, params, (err, rows) => {
    if (err) return res.status(500).json({ error: err.message });

    res.json({
      page: Number(page),
      limit: Number(limit),
      products: rows,
    });
  });
});

// GET /api/products/:id
router.get("/:id", (req, res) => {
  db.get("SELECT * FROM products WHERE id = ?", [req.params.id], (err, row) => {
    if (err) return res.status(500).json({ error: err.message });
    if (!row) return res.status(404).json({ error: "Product not found" });

    res.json(row);
  });
});

module.exports = router;
