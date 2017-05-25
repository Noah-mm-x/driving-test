'use strict';
const express = require('express');
const router = express.Router();
const md5 = require("md5-js");
const connection = require('../sources/connection');
const stateCode = require('../sources/StateCode.js');

router.post('/car',(req,res,next)=>{
		let con = connection();
		let max ;
		con.oConnect().then(result=>{
			return con.oQuery("SELECT * FROM `car`");
		}).then(rows=>{
			max = rows.length;
		}).then(result=>{
			return con.oQuery("SELECT * FROM `car` WHERE `id`=?", [req.body.id]);
		}).then(rows=>{
			var result = rows[0];
			console.log(result);
			res.json({state:stateCode.OK,msg:'获取成功',max:max,content:result}); 
			con.end();
		}).catch(error => {
	        res.json({state: error.errno, msg: error.code});
	    })
	})



module.exports = router;