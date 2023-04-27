const express = require('express')
const router = express.Router()
const Questions = require('./../models/questionsModel')


//Find all Questions
exports.getAllQuestions = async (req, res) => {
    try {
        const questions = await Questions.find()
        res.status(200).json({
            status: 'success',
            results: questions.length,
            data: { questions },
        });
    } catch {
        res.status(500).json({ message: err.message })
    }
}


//Find a question by id
exports.getQuestionById = async (req, res) => {
    try {
        const question = await Questions.findById(req.params.id)
        if (!question) {
            res.status(400).json({ status: 'failed' })
        }
        res.status(200).json({ status: 'success', data: { question } })
    } catch {
        res.status(400).json({ status: 'failed' })
    }

}


//Add a question
exports.createQuestion = (async (req, res) => {
    try {
        const newQuestion = await Questions.create(req.body)
        res.status(201).json({
            status: 'success',
            data: { newQuestion },
        });
    }
    catch (err) {
        res.status(400).json({ status: 'fail', message: err.message })
    }
})



//Patch a question
exports.updateQuestion = (async (req, res) => {
    try {
        const updatedQuestion = await Questions.findByIdAndUpdate(req.params.id, req.body, { new: true })
        res.status(200).json({ status: 'success', data: { updatedQuestion } })
    }
    catch (err) {
        res.status(500).json({ status: 'failed', message: err.message })
    }
})



//Delete a question 
exports.deleteQuestionById = (async (req, res) => {
    try {
        const question = await Questions.findByIdAndDelete(req.params.id)
        if (!question) { res.status(400).json({ message: 'the question doesn\'t exist' }) }
        res.status(200).json({ status: 'success', data: null })
    }
    catch (err) {
        res.status(500).json({ status: 'failed', message: err.message })
    }
})