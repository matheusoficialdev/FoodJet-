const router =
require("express").Router();

const controller =
require("./notification.controller");


router.get(
"/usuario/:id",
controller.listar
);


router.put(
"/:id/lida",
controller.marcarLida
);


module.exports = router;