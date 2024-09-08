const express = require('express');

const app = express();

app.use(express.json());

const port = process.env.PORT || 8000;

app.listen(port, (req, res) => {
  console.log(`Server is running on port ${port}`);
});

app.get("/", (req, res) => {
  res.send("Welcome to the API and docker demo server");
});
