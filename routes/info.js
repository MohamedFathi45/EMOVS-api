const express = require('express');
const router = express.Router();
const {getAppVersion , getSocialMedia} = require('../controllers/info') 


router.route('/version').get(getAppVersion);
router.route('/social_media').get(getSocialMedia);
module.exports = router;