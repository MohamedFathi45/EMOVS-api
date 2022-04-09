
const {search} = require('../controllers/search')

const express = require('express');
const router = express.Router();

router.route('/:query').get( search )


module.exports  = router;