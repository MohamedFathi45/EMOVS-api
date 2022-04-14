
const conn = require('../db/connect')

const getAppVersion = (req , res) =>{
    
    conn.execute(
        `select number as 'key' , link as 'value' from version limit 1`
        ,(err , results)=>{
            res.json({data : results})
        }
    )

}

const getSocialMedia = (req , res)=>{
    conn.execute(
        `select name as 'key' , link as 'value' from social_media_accounts`
        ,(err , results)=>{
            res.json({data : results})
        }
    )
}
module.exports = {getAppVersion , getSocialMedia}