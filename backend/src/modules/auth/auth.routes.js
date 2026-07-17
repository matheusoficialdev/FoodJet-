const router = require("express").Router();

const controller = require("./auth.controller");

router.post("/login", controller.login);

router.post("/register", controller.register);

router.post("/refresh", controller.refreshToken);

router.post("/forgot-password", controller.forgotPassword);

router.post("/reset-password", controller.resetPassword);

module.exports = router;