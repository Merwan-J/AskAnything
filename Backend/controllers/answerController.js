const AppError = require('../utils/appError');
const { catchAsyncError } = require('../utils/catchAsyncError');
const Answer = require('./../models/answerModel');
const User = require('./../models/userModel');
const { isIdValid } = require('./../utils/validator');

exports.createAnswer = catchAsyncError(async (req, res, next) => {
  const answer = await Answer.create(req.body);
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
};
                                    
exports.deleteAnswer = catchAsyncError(async (req, res, next) => {
  const answer = await User.findByIdAndDelete(req.params.id);
  if (!answer) {
    return res.status(404).send('there is no answer by this id');
  }
  res.status(200).json({
    staus: 'success',
    data: { answer },
  });
});
