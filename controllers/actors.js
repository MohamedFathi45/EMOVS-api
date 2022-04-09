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
        conn.execute(
            'SELECT * FROM actors where id = ?' , [req.params.id],
            (_err, results) => {
                res.status(200).json({data : results})
            }
        ) 
})

 const getActorWorks = ( (req , res) =>{
    conn.execute(
        'select * from general_shows where id = ANY(select show_id from show_actor_mapping  where member_id =?)' , [req.params.id],
        (_err, results) => {
            res.status(200).json({data : results})
        }
    )
 })

module.exports  = {getAllActors , getActor , getActorWorks}