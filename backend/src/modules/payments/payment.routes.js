const router =
require("express").Router();


const controller =
require("./payment.controller");


router.post(
"/pix",
controller.criarPix
);


router.put(
"/:id/status",
controller.atualizarStatus
);


module.exports = router;