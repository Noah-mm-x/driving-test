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
			res.json({state:stateCode.OK,msg:'获取成功',max:max,content:result}); 
			con.end();
		}).catch(error => {
	        res.json({state: error.errno, msg: error.code});
	    })
	})

router.post('/insertWrong',(req,res,next)=>{
		let con = connection();
		con.oConnect().then(result=>{
			return con.oQuery("SELECT * FROM `wrong` WHERE `qid`=? AND `uid`=?",[req.body.qid,req.body.uid]);
		}).then(rows=>{
			if(rows.length){
				res.json({state:stateCode.FAIL}); 
				con.end();
			}
		}).then(result=>{
			return con.oQuery("SELECT * FROM `car` WHERE `id`=?",[req.body.qid]);
		}).then(rows=>{
			var result = rows[0];
			return con.oQuery("INSERT INTO `wrong` (`qid`,`uid`,`question`,`a`,`b`,`c`,`d`,`right`,`imgUrl`,`type`) VALUES(?,?,?,?,?,?,?,?,?,?)",
				[req.body.qid,req.body.uid,result.question,result.a,result.b,result.c,result.d,
				result.right,result.imgUrl,result.type]);
		}).then(rows=>{
			res.json({state:stateCode.OK}); 
			con.end();
		}).catch(error => {
	        res.json({state: error.errno, msg: error.code});
	    })
	})


module.exports = router;