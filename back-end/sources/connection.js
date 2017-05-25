'use strict';
const mysql = require("mysql");

/**
 *
 * @returns {Connection}
 */
module.exports = function () {
    var conn = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "test"
    });
    conn.oConnect = function () {
        return new Promise( (resolve, reject) => { 
            conn.connect((err)=> !err ? resolve(conn) : reject(err))
        })
    };
    conn.oQuery = function (sql, values) {
        return new Promise( (resolve, reject) => { 
            conn.query(sql,values,(err,rows)=> !err ? resolve(rows) : reject(err))
        })
    };
    return conn;
};