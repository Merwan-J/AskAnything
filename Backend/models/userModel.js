const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
  name: {
    type: String,
    required: [true, 'user name is required'],
  },
  email: {
    type: String,
    required: [true, 'email is required'],
    unique: [true, 'email must be unique'],
  },
  password: {
    type: String,
    required: true,
  },
  profilePic: {
    type: String,
  },
  questions: {
    type: [{ type: mongoose.Types.ObjectId, ref: 'Question' }],
    default: [],
  },
  answers: {
    type: [{ type: mongoose.Types.ObjectId, ref: 'Answer' }],
  },
  reputation: {
    type: Number,
    default: 0,
  },
  followers: {
    type: [{ type: mongoose.Types.ObjectId, ref: 'User' }],
    default: [],
  },
  followings: {
    type: [{ type: mongoose.Types.ObjectId, ref: 'User', default: [] }],
  },
  //   TODO: what is date
});

const User = mongoose.model('User', userSchema);
module.exports = User;
