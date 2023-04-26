const mongoose = require('mongoose')
const questionsSchema = new mongoose.Schema({
    text: {
        type: String,
        required: true,
    },
    author: {
        type: String,
        required: true,
    },
    anonymousAuthor: {
        type: String,
        required: true,
    },
    answers: [{
        type: Array,
    }],
    tags: [{
        type: Array,
        required: true,
    }],
    like: {
        type: Number,
        default: 0
    },
    dislike: {
        type: Number,
        default: 0
    },
    date: {
        type: Date,
        default: Date.now,
    },
    image: {
        type: Buffer,
        contentType: String
    }
})

module.exports = mongoose.model('Question', questionsSchema)