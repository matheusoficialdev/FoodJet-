const router =
require("express").Router();


const auth =
require("../middleware/auth.middleware");


const admin =
require("./admin.middleware");


const controller =
require("./admin.controller");



router.get(

"/dashboard",

auth,

admin,

controller.dashboard

);



module.exports=router;