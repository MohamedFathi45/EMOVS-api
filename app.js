const express = require('express');
const app = express();

const actors_router = require('./routes/actors');
const shows_router = require('./routes/shows'); 
const search_router = require('./routes/search')

app.use(express.json())
app.use('/api/v1/actors' , actors_router);
app.use('/api/v1/shows' ,shows_router );
app.use('/api/v1/search', search_router)


const start = async ()=>{
    try {
        require('./db/connect');
       app.listen( 5000 , ()=>{
           console.log('App is listening on port 5000....');
       } ) 
    } catch (error) {
        console.log(error);
    }
}

start();