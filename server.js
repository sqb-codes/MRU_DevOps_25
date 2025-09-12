const express = require("express");
const app = express();

const PORT = process.env.PORT || 9898;

app.get("/", (req, res)=> {
    res.send("<h1>Hello from Express + Docker...</h1>");
})

app.listen(PORT, () => {
    console.log("Server started on PORT :",PORT);
})