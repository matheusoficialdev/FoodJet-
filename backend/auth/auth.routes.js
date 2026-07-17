const router=require("express").Router();

const controller=require("./auth.controller");


router.post(
"/cadastro",
controller.cadastro
);


router.post(
"/login",
controller.login
);


module.exports=router;