
const conn = require('../db/connect')

const getSeriesLinks = (req , res)=>{
    conn.execute(
        'select ( select server_name from server where server.id = res.server_id ) as server_name, link as streaming_link, downloading_link,quality from series_link res where res.general_show_id = ? and res.session_id = ? and res.episode_id = ?',
        [req.params.show_id , req.params.session_id , req.params.episod_id],(err , result) =>{
            res.json({data : result})
        },
        (err , result) =>{
            res.json({data : result})
        }
    )
}

const getNonSeriesLinks = (req , res)=>{
    conn.execute(
        'select ( select server_name from server where server.id = res.server_id ) as server_name, link as streaming_link, downloading_link,quality from non_series_link res where res.general_show_id = ?',[req.params.id]
        ,(err , result) =>{
            res.json({data : result})
        }
    )
}


module.exports = {  getNonSeriesLinks , getSeriesLinks}