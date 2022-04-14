
const {getEpisods,getSessions,getAllShows , getShow , readMainScreenShows , readLatest , readCat , getMainRoleActors} = require('../controllers/shows')

const express = require('express');
const { route } = require('./actors');

const router = express.Router();

router.route('/').get(getAllShows)
router.route('/all/:id').get(getShow)
router.route('/latest').get(readLatest)
router.route('/main_screen/cat/:category').get(readMainScreenShows)
router.route('/:category').get(readCat)
router.route('/:id/actors').get(getMainRoleActors)
router.route('/series/:id/').get(getSessions);
router.route('/series/:show_id/:session_id/').get(getEpisods);

module.exports =  router 