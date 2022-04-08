const express = require('express');
const connect = require('./dp/connect');
const app = express();


const start = async ()=>{
    try {
       await connect();
       app.listen( 3000 , ()=>{
           console.log('App is listening on port 3000....');
       } ) 
    } catch (error) {
        console.log(error);
    }
}

start();