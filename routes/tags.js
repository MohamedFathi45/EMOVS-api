const {getTags} = require('../controllers/tags')

const express = require('express');

const router = express.Router();

router.route('/:id').get(getTags);

module.exports = router;