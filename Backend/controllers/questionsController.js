const express = require('express');
const router = express.Router();
const User = require('./../models/userModel');
const AppError = require('../utils/appError');
const { catchAsyncError } = require('../utils/catchAsyncError');
const { isIdValid } = require('../utils/validator');
const Questions = require('./../models/questionsModel');

//Find all Questions
exports.getAllQuestions = catchAsyncError(async (req, res, next) => {
  console.log('get all questions');
  console.log('sending them questions');

  //get questions sorted by date

  const questions = await Questions.find({ status: 'approved' })
    .sort({ createdAt: -1 })
    .populate({
      path: 'author',
      model: 'User',
    });
  console.log(questions.length);

  res.status(200).json({
    status: 'success',
    results: questions.length,
    data: { questions },
  });
});

//Find a question by id
exports.getQuestionById = catchAsyncError(async (req, res, next) => {
  // if (!isIdValid(req.id)) {
  //   return new AppError('invalid id', 400);
  // }
  //populate answers and author
  const question = await Questions.findById(req.params.id).populate({
    path: 'author',
    model: 'User',
  });
  if (!question) {
    return next(new AppError('question not found', 404));
  }
  res.status(200).json({ status: 'success', data: { question } });
});

//Add a question
exports.createQuestion = catchAsyncError(async (req, res) => {
  console.log(req.body);
  const question = await Questions.create(req.body);
  const user = await User.findById(req.body.author);
  // console.log(user.questions);
  // console.log(user.email);
  user.questions.push(question._id);

  //populate the created question before sending back

  await user.save();
  const populatedQuestion = await Questions.findById(question._id).populate({
    path: 'author',
    model: 'User',
  });
  res.status(201).json({
    status: 'success',
    data: { question: populatedQuestion },
  });
});

//Patch a question
exports.updateQuestion = catchAsyncError(async (req, res) => {
  const question = await Questions.findByIdAndUpdate(req.params.id, req.body, {
    new: true,
  });
  const newQuestion = await Questions.findById(question._id).populate({
    path: 'author',
    model: 'User',
  });
  res.status(200).json({ status: 'success', data: { question: newQuestion } });
});

//Delete a question
exports.deleteQuestionById = catchAsyncError(async (req, res) => {
  const question = await Questions.findByIdAndDelete(req.params.id);
  const user = await User.findById(question.author);
  user.questions.pull(question._id);
  await user.save();
  if (!question) {
    return new AppError('question not found', 404);
  }
  res.status(200).json({ status: 'success', data: null });
});

//Upvote a question
exports.upvoteQuestion = catchAsyncError(async (req, res, next) => {
  const questionId = req.params.id;
  const userId = req.body.userId;
  const question = await Questions.findById(questionId);
  if (!question) {
    return next(new AppError('question not found', 404));
  }
  //remove userId from dislikes and add to likes
  question.dislikes.pull(userId);
  question.likes.pull(userId);
  question.likes.push(userId);
  await question.save();
  const newQuestion = await Questions.findById(questionId).populate({
    path: 'author',
    model: 'User',
  });
  res.status(200).json({
    status: 'success',
    data: {
      question: newQuestion,
    },
  });
});

exports.downvoteQuestion = catchAsyncError(async (req, res, next) => {
  const questionId = req.params.id;
  const userId = req.body.userId;
  const question = await Questions.findById(questionId);
  if (!question) {
    return next(new AppError('question not found', 404));
  }
  question.likes.pull(userId);
  question.dislikes.pull(userId);
  question.dislikes.push(userId);

  await question.save();
  const newQuestion = await Questions.findById(questionId).populate({
    path: 'author',
    model: 'User',
  });
  res.status(200).json({
    status: 'success',
    data: {
      question: newQuestion,
    },
  });
});

exports.getPendingQuestions = catchAsyncError(async (req, res, next) => {
  const questions = await Questions.find({ status: 'pending' }).populate({
    path: 'author',
    model: 'User',
  });
  res.status(200).json({
    status: 'success',
    results: questions.length,
    data: { questions },
  });
});

exports.approveQuestion = catchAsyncError(async (req, res, next) => {
  const question = await Questions.findById(req.params.id).populate({
    path: 'author',
    model: 'User',
  });

  question.status = 'approved';
  await question.save();

  res.status(200).json({
    status: 'success',
    data: { question },
  });
});
exports.rejectQuestion = catchAsyncError(async (req, res, next) => {
  const question = await Questions.findById(req.params.id).populate({
    path: 'author',
    model: 'User',
  });

  question.status = 'rejected';
  await question.save();

  res.status(200).json({
    status: 'success',
    data: { question },
  });
});
