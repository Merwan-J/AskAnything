const express = require('express');
const questionsController = require('./../controllers/questionsController')
const router = express.Router();

router
    .route('/')
    .get(questionsController.getAllQuestions)
    .post(questionsController.createQuestion);

router
    .route('/:id')
    .get(questionsController.getQuestionById)
    .patch(questionsController.updateQuestion)
    .delete(questionsController.deleteQuestionById);

module.exports = router;