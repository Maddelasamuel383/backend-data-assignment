require("dotenv").config();
const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");

const productRoutes = require("./routes/products");
const enquiryRoutes = require("./routes/enquires");
require("./db");

const app = express();

app.use(cors());
app.use(bodyParser.json());

// Test route
app.get("/", (req, res) => {
  res.send("GVCC Backend Running");
});

// Connect routes
app.use("/api/products", productRoutes);
app.use("/api/enquiries", enquiryRoutes);

const PORT = process.env.PORT || 3001;
app.listen(PORT, () =>
  console.log(`🚀 Server running on http://localhost:${PORT}`)
);
