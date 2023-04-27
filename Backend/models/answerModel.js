const mongoose = require('mongoose');

const Schema = mongoose.Schema;

const AnswerSchema = new Schema(
    {
        text: {type: String, required: true},
        image: {type: Buffer},
        likes: {type: Number, default: 0},
        dislikes: {type: Number, default: 0},
        author: {type: Schema.Types.ObjectId, ref: 'Author'},
        anonymous_author: {type: Boolean, default: false},
        question: {type: Schema.Types.ObjectId, ref: 'Question', required: true},
        date: {type: Date, default: Date.now}
    }
);

AnswerSchema
.virtual('url')
.get(function () {
    return '/answers/' + this._id;
});


module.exports = mongoose.model('Answer', AnswerSchema);