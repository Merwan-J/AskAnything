const Poll = require('../models/pollModel');

const { catchAsyncError } = require('../utils/catchAsyncError');

exports.createPoll = catchAsyncError(async (req, res, next) => {
  const { pollTitle, pollOptions, author, voteText } = req.body;
  const poll = await Poll.create({
    pollTitle,
    pollOptions,
    author,
    voteText,
  });
  res.status(201).json({
    status: 'success',
    data: { poll },
  });
});

exports.getAllPolls = catchAsyncError(async (req, res, next) => {
  const polls = await Poll.find().populate({ path: 'author', ref: 'User' });
  res.status(200).json({
    status: 'success',
    results: polls.length,
    data: { polls },
  });
});

exports.getPoll = catchAsyncError(async (req, res, next) => {
  const poll = await Poll.findById(req.params.id).populate({
    path: 'author',
    ref: 'User',
  });
  res.status(200).json({
    status: 'success',
    data: { poll },
  });
});

exports.updatePoll = catchAsyncError(async (req, res, next) => {
  const body = req.body;
  const id = req.params.id;

  const poll = await Poll.findByIdAndUpdate(id, body, { new: true });

  res.status(200).json({
    status: 'success',
    data: { poll },
  });
});

exports.deletePoll = catchAsyncError(async (req, res, next) => {
  const id = req.params.id;
  const poll = await Poll.findByIdAndDelete(id);
  res.status(204).json({
    status: 'success',
    data: null,
  });
});

exports.votePoll = catchAsyncError(async (req, res, next) => {
  const { optionId, userId } = req.body;
  const poll = await Poll.findById(req.params.id);
  const option = poll.pollOptions.find(option => option.id == optionId);
  if (!option) {
    return next(new AppError('invalid option', 400));
  }
  if (option.votes.includes(userId)) {
    return next(new AppError('user already voted', 400));
  }
  option.votes.push(userId);
  await poll.save();
  res.status(200).json({
    status: 'success',
    data: { poll },
  });
});

exports.unvotePoll = catchAsyncError(async (req, res, next) => {
  const { optionId, userId } = req.body;
  const poll = await Poll.findById(req.params.id);
  const option = poll.pollOptions.find(option => option.id == optionId);
  if (!option) {
    return next(new AppError('invalid option', 400));
  }
  if (!option.votes.includes(userId)) {
    return next(new AppError('user has not voted', 400));
  }
  option.votes = option.votes.filter(vote => vote != userId);
  await poll.save();
  res.status(200).json({
    status: 'success',
    data: { poll },
  });
});
