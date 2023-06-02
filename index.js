const express = require("express");
const config = require('config')

const app = express()
console.log(config);

app.get("/", (req, res) => {
  res.send("<h1>Code Deploy Sample v3!!</h1>");
});

app.get("/status", (req, res) => {
  res.send("ok");
});

app.listen(3001, () => {
  console.log("listening");
});
