'use strict';
const express = require('express');
const router = express.Router();
const md5 = require("md5-js");
const connection = require('../sources/connection');
const stateCode = require('../sources/StateCode.js');
// const base = new Base64();

/* GET users listing. */
router.get('/', function(req, res, next) {
  	
});


router.post('/register',(req,res,next)=>{
		if(!req.body.name) res.json({state:stateCode.USERNAME_IS_NULL,msg:'用户名不能为空'});
		if(!req.body.pwd) res.json({state:stateCode.PASSWORD_IS_NULL,msg:'密码不能为空'});
		next();
	}).post('/register',(req,res,next)=>{
		let con = connection();
		con.oConnect().then(result=>{
			return con.oQuery("SELECT * FROM `users` WHERE `name`=?",[req.body.name]);
		}).then(rows=>{
			if(rows.length){
				let result  = rows[0];
				if(req.body.name == result.name){
					res.json({state:stateCode.USER_IS_EXIST,msg:'用户已存在'});
					con.end();
				}
			}
		}).then(rows=>{
			return con.oQuery("INSERT INTO `users` (`name`,`pwd`) VALUES (?,?)"
				,[req.body.name,md5(req.body.pwd)])
		}).then(result=>{
			return con.oQuery("SELECT * FROM `users` WHERE `name`=?",[req.body.name]);
		}).then(rows=>{
			if(rows.length){
				var result = rows[0];
				res.json({state:stateCode.OK,msg:'注册成功',userId:result.id});
			}
		}).catch(error => {
	        res.json({state: error.errno, msg: error.code});
	    })
})

router.post('/login',(req,res,next)=>{
		if(!req.body.name) res.json({state:stateCode.USERNAME_IS_NULL,msg:'用户名不能为空'});
		if(!req.body.pwd) res.json({state:stateCode.PASSWORD_IS_NULL,msg:'密码不能为空'});
		next();
	}).post('/login',(req,res,next)=>{
		let con = connection();
		con.oConnect().then(result=>{
			 return con.oQuery("SELECT * FROM `users` WHERE `name`=?", [req.body.name]);
		}).then(rows=>{
			if(rows.length){
				var result = rows[0];
				if(md5(req.body.pwd)==result.pwd) {
					res.json({state:stateCode.OK,msg:'登录成功',userId:result.id}); 
					console.log(base.encode(result.id));
					req.session.user = req.body.name;
					req.session.isLogin = 1;
					console.log(req.session.user);
					console.log(req.session.isLogin);
				} else{
					res.json({state: stateCode.PASSWORD_WRONG, msg: "密码错误"});
				}
			}else{
				res.json({state: stateCode.NO_SUCH_USER, msg: "没有此用户"});
			}
			con.end();
		}).catch(error => {
	        res.json({state: error.errno, msg: error.code});
	    })
	})



module.exports = router;
