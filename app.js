const express = require('express');
const app = express();

const actors_router = require('./routes/actors');

app.use(express.json())
app.use('/api/v1/actors' , actors_router);



const start = async ()=>{
    try {
        require('./db/connect');
       app.listen( 3000 , ()=>{
           console.log('App is listening on port 3000....');
       } ) 
    } catch (error) {
        console.log(error);
    }
}

start();

app.get('/', function(req, res) {
    res.send('Home page');
  });