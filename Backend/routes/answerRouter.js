const express = require('express');
const answerController = require('./../controllers/answerController');

const router = express.Router();

router
  .route('/')
  .post(answerController.createAnswer)
  .get(answerController.getAnswers);
router
  .route('/:id')
  .get(answerController.getAnswer)
  .patch(answerController.updateAnswer)
  .delete(answerController.deleteAnswer);

module.exports = router;
