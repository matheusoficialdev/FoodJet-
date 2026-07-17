require("dotenv").config();

const express = require("express");
const cors = require("cors");

const app = express();

app.use(cors());
app.use(express.json());


app.get("/", (req,res)=>{
    res.json({
        sistema:"FoodJet API",
        status:"online"
    });
});


const PORT = process.env.PORT || 3000;


app.listen(PORT,()=>{
    console.log(
      `FoodJet rodando na porta ${PORT}`
    );
});