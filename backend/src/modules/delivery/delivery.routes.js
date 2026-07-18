const router =
require("express").Router();

const controller =
require("./delivery.controller");


router.post(
"/localizacao",
controller.atualizarLocalizacao
);


module.exports = router;