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
        return new Promise(function (resolve, reject) {
            conn.connect(function (err) {
                if (!err) {
                    resolve(conn);
                } else {
                    reject(err);
                }
            })
        })
    };
    conn.oQuery = function (sql, values) {
        return new Promise(function (resolve, reject) {
            conn.query(sql, values, function (err, rows) {
                if (!err) {
                    resolve(rows);
                } else {
                    reject(err);
                }
            })
        })
    };
    return conn;
};