const router =
require("express").Router();


const controller =
require("./order.controller");



router.post(
"/",
controller.create
);



router.get(
"/:id",
controller.findById
);



router.put(
"/:id/status",
controller.updateStatus
);



module.exports = router;