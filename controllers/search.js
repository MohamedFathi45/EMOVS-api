
const conn = require('../db/connect')

const search = (req , res) =>{
    if(! req.params.query){
        return res.json({data : 'Not Found'})
    }
    conn.execute(
        'select * from general_shows where Match(general_show_name)Against(?)',[req.params.query]
        ,(err , results)=>{
            res.json({data : results})
        }
    )

}
module.exports = {search}