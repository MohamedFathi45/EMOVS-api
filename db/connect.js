const mysql = require('mysql2');

require('dotenv').config()

const conn = mysql.createPool({
        host: process.env.SQL_HOST_NAME,
        user: process.env.SQL_USERNAME,
        password :process.env.SQL_PASSWORD,
        database : process.env.SQL_DATABASE_NAME
     }
   )

module.exports = conn;