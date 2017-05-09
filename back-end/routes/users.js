'use strict';
const express = require('express');
const router = express.Router();
const connection = require('../sources/connection');

/* GET users listing. */
router.get('/', function(req, res, next) {
  	
});

router.post('/con',(req,res,next)=>{
	let conn = connection();
	conn.oConnect().then(result=>{
			return conn.oQuery('SELECT * FROM users');
		}).then(rows=>{
			if(rows.length) res.json({data:rows});
			conn.end();
		}).catch(error=>{
			res.json({data:error});
		})
})

module.exports = router;
