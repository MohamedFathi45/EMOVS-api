
const {getAllShows , getShow , readMainScreenShows , readLatest , readCat} = require('../controllers/shows')

const express = require('express')

const router = express.Router();

router.route('/').get(getAllShows)
router.route('/all/:id').get(getShow)
router.route('/latest').get(readLatest)
router.route('/main_screen/cat/:category').get(readMainScreenShows)
router.route('/:category').get(readCat)

module.exports =  router 