const express = require("express");
const app = express();

const PORT = 9898;

app.get("/", (req, res)=> {
    res.send("<h1>Hello from Express..</h1>");
})

app.listen(PORT, () => {
    console.log("Server started on PORT :",PORT);
})