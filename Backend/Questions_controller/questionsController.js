const express = require('express')
const router = express.Router()
const Questions = require('./questions_model')


//Find all Questions
exports.getAllQuestions = async (req, res) => {
    try {
        const questions = await Questions.find()
        res.status(200).json(questions)
    } catch {
        res.status(500).json({ message: err.message })
    }
}


//Find a question by id
exports.getQuestionById = async (req, res) => {
    const question = await Questions.findById(req.params.id)
    if (!question) {
        res.status(400).json({ message: 'Cannot find the question' })
    }
    res.status(200).json(res.question)
}


//Add a question
exports.createQuestion = (async (req, res) => {
    try {
        const newQuestion = await Questions.create(req.body)
        res.status(201).json(newQuestion)
    }
    catch (err) {
        res.status(400).json({ message: err.message })
    }
})



//Patch a question
exports.updateQuestion = (async (req, res) => {
    try {
        const updatedQuestion = await Questions.findByIdAndUpdate(req.params.id, req.body)
        res.status(200).json({ message: 'Successful update' })
    }
    catch (err) {
        res.status(500)
    }
})



//Delete a question 
exports.deleteQuestionById = (async (req, res) => {
    try {
        const question = await Questions.findByIdAndDelete(req.params.id)
        if (!question) { res.status(400).json({ message: 'the question doesn\'t exist' }) }
        res.status(200).json({ message: 'Sucessfully Deleted' })
    }
    catch (err) {
        res.status(500).json({ message: err.message })
    }
})