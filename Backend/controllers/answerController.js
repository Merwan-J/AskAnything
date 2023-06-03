const AppError = require('../utils/appError');
const { catchAsyncError } = require('../utils/catchAsyncError');
const Answer = require('./../models/answerModel');
const User = require('./../models/userModel');
const { isIdValid } = require('./../utils/validator');
const Question = require('./../models/questionsModel');
const { default: mongoose } = require('mongoose');

exports.createAnswer = catchAsyncError(async (req, res, next) => {
  console.log(req.body);
  const answer = await Answer.create(req.body);
  const user = await User.findById(req.body.author);
  const question = await Question.findById(req.body.question);
  console.log('backe here');
  console.log(answer._id);
  // console.log(question);
  question.answers.push(answer._id);
  user.answers.push(answer._id);
  await question.save();
  await user.save();

  const newAnswer = await Answer.findById(answer._id).populate({
    path: 'author',

    model: 'User',
  });

  res.status(201).json({
    status: 'success',
    data: { answer: newAnswer },
  });
});
exports.getAnswers = catchAsyncError(async (req, res, next) => {
  const answers = await Answer.find();
  res.status(200).json({
    status: 'success',
    results: answers.length,
    data: { answers },
  });
});
exports.getAnswer = catchAsyncError(async (req, res, next) => {
  const answer = await Answer.findById(req.params.id);
  if (!answer) {
    return next(new AppError('answer not found', 404));
  }
  res.status(200).json({
    status: 'success',
    data: { answer },
  });
});
exports.updateAnswer = catchAsyncError(async (req, res, next) => {
  console.log(req.body);
  const answer = await Answer.findByIdAndUpdate(req.params.id, req.body, {
    new: true,
  });

  const savedAnswer = await Answer.findById(req.params.id).populate({
    path: 'author',
    model: 'User',
  });
  console.log('here is the new answer');
  console.log(answer);
  res.status(200).json({
    status: 'sucess',
    data: { answer: savedAnswer },
  });
});
exports.getAnswersByQuestion = catchAsyncError(async (req, res, next) => {
  console.log(req.params.id);
  console.log('here herree --------------------');

  const answers = await Answer.find({
    question: req.params.id,
  }).populate({
    path: 'author',
    model: 'User',
  });
  console.log("after popluation of author's name");
  console.log(answers);
  res.status(200).json({
    status: 'success',
    results: answers.length,
    data: { answers },
  });
});

exports.deleteAnswer = catchAsyncError(async (req, res, next) => {
  console.log("here's the id");
  console.log(req.params.id);

  const answer = await Answer.findByIdAndDelete(req.params.id);
  const user = await User.findById(answer.author);
  const question = await Question.findById(answer.question);

  question.answers.pull(answer._id);
  user.answers.pull(answer._id);
  await question.save();
  await user.save();
  // const answer = await User.findByIdAndDelete(req.params.id);
  if (!answer) {
    return res.status(404).send('there is no answer by this id');
  }
  res.status(200).json({
    staus: 'success',
    data: { answer },
  });
});
