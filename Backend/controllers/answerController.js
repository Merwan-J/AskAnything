const AppError = require('../utils/appError');
const { catchAsyncError } = require('../utils/catchAsyncError');
const Answer = require('./../models/answerModel');
const User = require('./../models/userModel');
const { isIdValid } = require('./../utils/validator');
const Question = require('./../models/questionsModel');

exports.createAnswer = catchAsyncError(async (req, res, next) => {
  const answer = await Answer.create(req.body);
  const user = await User.findById(req.body.author);
  const question = await Question.findById(req.body.question);

  // console.log(answer.question);
  // console.log(answer.author);

  question.answers.push(answer._id);
  user.answers.push(answer._id);
  await question.save();
  await user.save();

  res.status(201).json({
    status: 'success',
    data: { answer },
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
  try {
    const newAnswer = await User.findByIdAndUpdate(req.params.id, req.body, {
      new: true,
    });
    res.status(200).json({
      status: 'sucess',
      data: { newAnswer },
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
});

exports.deleteAnswer = catchAsyncError(async (req, res, next) => {
  // if (!isIdValid(req.id)) {
  //   return next(new AppError('invalid id', 400));
  // }
  const answer = await Answer.findByIdAndDelete(req.params.id);
  const user = await User.findById(answer.author);
  const question = await Question.findById(answer.question);

  // console.log(answer.question);
  // console.log(answer.author);

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
