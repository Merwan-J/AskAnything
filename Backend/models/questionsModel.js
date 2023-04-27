const mongoose = require('mongoose')
const questionsSchema = new mongoose.Schema({
    question: {
        title: {
            type: String,
            required: true
        },
        description: {
            type: String,
            required: true
        },


    },
    author: {
        type: String,
        required: true,
    },
    anonymous: {
        type: Boolean,
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
        type: Array,
        default: 0
    },
    dislike: {
        type: Array,
        default: 0
    },
    date: {
        type: Date,
        default: Date.now,
    },
    image: {
        type: String,
        contentType: String
    }
})

module.exports = mongoose.model('Question', questionsSchema)