const conn = require('../db/connect')

const getAllShows = (req , res)=>{
    conn.execute(
        'SELECT * FROM general_shows',
        (err , result) =>{
            res.json({data : result})
        }
    )
}
const getShow = (req , res)=>{
    conn.execute(
        'SELECT * FROM general_shows where id = ?' , [req.params.id],
        (err , result) =>{
            res.json({data : result})
        }
    )
}

const readMainScreenShows = (req , res)=>{          // multiple calls will be called from the front-end each time with the spicified category

    conn.execute(
        'select * from general_shows where id = ANY(select id from main_screen_shows where cat_id = (select id from showsCategories where name = ?))' , [req.params.category],
        (err , result) =>{
            res.json({data : result})
        }
    )
}

const readLatest = (req , res)=>{
    conn.execute(
        'select * from general_shows order by id DESC limit 1' ,
        (err , result) =>{
            res.json({data : result})
        }
    )
}

const readCat = (req , res)=>{
    conn.execute(
        'select * from general_shows where cat_id =  (select id from showsCategories where name = ?)',[req.params.category] ,
        (err , result) =>{
            res.json({data : result})
        }
    )
}

module.exports = {getAllShows , getShow , readMainScreenShows,readLatest , readCat}