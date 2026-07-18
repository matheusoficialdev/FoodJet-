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
});const authRoutes =
require("./auth/auth.routes");


app.use(
"/api/auth",
authRoutes
);const adminRoutes =
require("./admin/admin.routes");


app.use(
"/api/admin",
adminRoutes
);const http =
require("http");

const app =
require("./app");


const server =
http.createServer(app);



const socket =
require("./websocket/socket");


socket.iniciarSocket(server);



server.listen(
3000,
()=>{

console.log(
"FoodJet API online"
);

});