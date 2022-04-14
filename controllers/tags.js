
const conn = require('../db/connect');


const getTags = (req , res)=>{
    conn.execute(
        'select * from show_tags where show_id = ?' , [req.params.id]
        ,(err , results) =>{
            res.json({data : results})
        }
    )
}

module.exports = {getTags}