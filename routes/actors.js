const express = require('express');
const router = express.Router();
const {getAllActors , getActor , getActorWorks} = require('../controllers/actors') 


router.route('/').get(getAllActors);

router.route('/:id').get(getActor);

router.route('/:id/works').get(getActorWorks)
module.exports = router;