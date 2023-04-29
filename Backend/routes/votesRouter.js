const express = require('express');

const router = express.Router();
const votesController = require('../controllers/votesController');

router.post('/upvote', votesController.upvote);
router.post('/downvote', votesController.downvote);

module.exports = router;
