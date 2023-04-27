const express = require('express');
// const userController = require('./');
const questionsController = require('../Questions_controller/questionsController')
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




















// const express = require('express')
// const router = express.Router()
// const Questions = require('../Questions Model/questions_model')

// //Find all Questions
// router.get('/', async (req, res) => {
//     try {
//         const questions = await Questions.find()
//         res.json(questions)
//     } catch {
//         res.status(500).json({ message: err.message })
//     }
// })


// //Find a question by id
// router.get('/:id', getQuestion, async (req, res) => {
//     res.json(res.question)
// })


// //Add a question
// router.post('/', async (req, res) => {
//     const keys = Object.keys(req.body)
//     const newQuestion = new Questions()

//     try {
//         keys.forEach((key) => newQuestion[key] = req.body[key])
//         await newQuestion.save()
//         res.status(201).json(newQuestion)
//     }
//     catch (err) {
//         res.status(400).json({ message: err.message })
//     }
// })


// //Patch a question
// router.patch('/:id', getQuestion, async (req, res) => {
//     const { id } = req.params
//     const updates = req.body
//     try {
//         Object.assign(req.question, updates)
//         await req.question.save()
//         res.status(200).json({ message: 'Successful update' })
//     }
//     catch (err) {
//         res.status(500)
//     }
// })


// //Delete a question 
// router.delete('/:id', getQuestion, async (req, res) => {
//     try {
//         await req.question.remove()
//         res.status(200).json({ message: 'Sucessfully Deleted' })
//     }
//     catch (err) {
//         res.status(500).json({ message: err.message })
//     }
// })


// //Middleware to get a particular question
// getQuestion = async (req, res, next) => {
//     let question;
//     try {
//         question = await Questions.findById(req.params.id)
//         if (question == null) {
//             return res.status(404)
//         }
//     } catch (err) {
//         return res.status(500)
//     }
//     res.question = question
//     next()
// }

// module.exports = router