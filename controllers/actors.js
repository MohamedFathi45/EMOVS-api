const conn = require('../db/connect')

const getAllActors = ( (req , res)=>{
    conn.execute(
        'SELECT * FROM actors',
        (_err, results) => {
            console.log(results);
            res.json({data : results})
        }
    )
})

const getActor = ( (req , res) =>{
    const data = req.params.id;
    if(typeof data != "string" ){
        res.status(400).send();
    }
    conn.execute(
        'SELECT * FROM actors where id = ?' , [req.params.id],
        (_err, results) => {
            console.log(results);
            res.status(200).json({data : results})
        }
    )    
})

module.exports  = {getAllActors , getActor}