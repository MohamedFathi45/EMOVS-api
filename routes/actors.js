const express = require('express');
const router = express.Router();
const {getAllActors , getActor} = require('../controllers/actors') 


router.route('/').get(getAllActors);

router.route('/:id').get(getActor);

module.exports = router;