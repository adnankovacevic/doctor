const e = require("express");
const express = require("express");
const mongoose = require("mongoose");


const PORT = process.env.PORT || 3000;

const app = express();

const db = "mongodb+srv://adnan:<password>@cluster0.wzxb2rq.mongodb.net/?retryWrites=true&w=majority";

mongoose
       .connect(db)
       .then(() => {
              console.log("Connection successful");
       })
       .catch( (e) => {
              console.log(e);
       })

app.use(express.json());

app.listen(PORT, "0.0.0.0", () => {
       console.log(`connected at port ${PORT}`);
});