const mongoose = require('mongoose');
const router = require('express').Router();
const Poll = require('../models/pollModel');
const pollController = require('../controllers/pollController');

router
  .route('/')
  .get(pollController.getAllPolls)
  .post(pollController.createPoll);

router
  .route('/:id')
  .get(pollController.getPoll)
  .patch(pollController.updatePoll)
  .delete(pollController.deletePoll);

router.route('/:id/vote').post(pollController.votePoll);
router.route('/:id/unvote/').post(pollController.unvotePoll);

module.exports = router;
