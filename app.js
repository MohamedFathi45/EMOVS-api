const express = require('express');
const app = express();

const actors_router = require('./routes/actors');
const shows_router = require('./routes/shows'); 
const search_router = require('./routes/search');
const tags_router = require('./routes/tags');
const info_router = require('./routes/info');
const links_router = require('./routes/links');

app.use(express.static('./public'));
app.use(express.json())
app.use('/api/v1/actors' , actors_router);
app.use('/api/v1/shows' ,shows_router );
app.use('/api/v1/search', search_router);
app.use('/api/v1/tags' , tags_router);
app.use('/api/v1/info' , info_router);
app.use('/api/v1/links' , links_router);




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