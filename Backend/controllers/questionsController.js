const express = require('express');
const router = express.Router();
const User = require('./../models/userModel');
const AppError = require('../utils/appError');
const { catchAsyncError } = require('../utils/catchAsyncError');
const { isIdValid } = require('../utils/validator');
const Questions = require('./../models/questionsModel');

//Find all Questions
exports.getAllQuestions = catchAsyncError(async (req, res, next) => {
  const questions = await Questions.find();
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

  const question = await Questions.findById(req.params.id);
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
  await user.save();
  res.status(201).json({
    status: 'success',
    data: { question },
  });
});

//Patch a question
exports.updateQuestion = catchAsyncError(async (req, res) => {
  const question = await Questions.findByIdAndUpdate(req.params.id, req.body, {
    new: true,
  });
  res.status(200).json({ status: 'success', data: { question } });
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
