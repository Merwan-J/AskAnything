const express = require('express');
const answerController = require('./../controllers/answerController');

const router = express.Router();

router.route('/').post(answerController.createAnswer);
router.route('/').get(answerController.getAnswers);
router.route('/:id').get(answerController.getAnswer);
router.route('/:id').put(answerController.updateAnswer);
router.route('/:id').delete(answerController.deleteAnswer);
router.route('/question/:id').get(answerController.getAnswersByQuestion);

module.exports = router;
