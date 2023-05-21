const mongoose = require('mongoose');

const Schema = mongoose.Schema;

const AnswerSchema = new Schema(
  {
    text: { type: String, required: true },
    image: { type: String },
    likes: {
      type: [mongoose.Schema.Types.ObjectId],
      ref: 'User',
      default: [],
    },
    dislikes: {
      type: [mongoose.Schema.Types.ObjectId],
      ref: 'User',
      default: [],
    },
    author: { type: Schema.Types.ObjectId, ref: 'User', required: true },
    anonymous: { type: Boolean, default: false },
    //question is a required thing but since i don't have the questions id i set the value to false, must be corrected
    question: { type: Schema.Types.ObjectId, ref: 'Question', required: true },
  },
  { timestamps: true }
);

module.exports = mongoose.model('Answer', AnswerSchema);
