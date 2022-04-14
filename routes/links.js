
const {getSeriesLinks  ,getNonSeriesLinks} = require('../controllers/links')

const express = require('express');
const router = express.Router();


router.route('/series/:show_id/:session_id/:episod_id').get(getSeriesLinks);
router.route('/non-series/:id').get(getNonSeriesLinks);


module.exports = router;