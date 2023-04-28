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
        type: [mongoose.Schema.Types.ObjectId],
        ref: 'User',
        default: []
    },
    dislike: {
        type: [mongoose.Schema.Types.ObjectId],
        ref: 'User',
        default: []
    },
    timeStamp: {
        type: Date,
        default: Date.now,
    },
    image: {
        type: String,
        contentType: String
    }
},
    { timestamps: true }
)

module.exports = mongoose.model('Question', questionsSchema)