const express = require('express');
const questionsController = require('./../controllers/questionsController');
const router = express.Router();
router.route('/pending').get(questionsController.getPendingQuestions);
router.route('/approve/:id').post(questionsController.approveQuestion);
router.route('/reject/:id').post(questionsController.rejectQuestion);
router
  .route('/')
  .get(questionsController.getAllQuestions)
  .post(questionsController.createQuestion);

router
  .route('/:id')
  .get(questionsController.getQuestionById)
  .patch(questionsController.updateQuestion)
  .delete(questionsController.deleteQuestionById);
//upvote a question
router.route('/upvote/:id').post(questionsController.upvoteQuestion);
router.route('/downvote/:id').post(questionsController.downvoteQuestion);

module.exports = router;
