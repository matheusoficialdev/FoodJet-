const service = require("./auth.service");

exports.login = async (req,res)=>{

    const response =
    await service.login(req.body);

    res.json(response);

}

exports.register = async(req,res)=>{

    const response =
    await service.register(req.body);

    res.json(response);

}