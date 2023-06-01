const User = require('./../models/userModel');
const { catchAsyncError } = require('../utils/catchAsyncError');
// const { isIdValid, isEmailValid } = require('./../utils/validator');

const AppError = require('../utils/appError');
const Answer = require('../models/answerModel');
const Question = require('../models/questionsModel');

exports.createUser = catchAsyncError(async (req, res, next) => {
  // next(new Error('tdhis sjfaksjfksjfkj'));
  // const { valid, reason, validators } = await isEmailValid(req.body.email);
  // if (!valid) {
  //   next(
  //     new AppError(
  //       `please provide a valid email: ${validators[reason].reason}`,
  //       400
  //     )
  //   );
  //   return;
  // }
  const user = await User.create(req.body);

  res.status(201).json({
    status: 'success',
    data: { user },
  });
});

exports.getUsers = catchAsyncError(async (req, res, next) => {
  // console.log(req.params);
  const users = await User.find();
  res.status(200).json({
    status: 'success',
    results: users.length,
    data: { users },
  });
});

exports.getUser = catchAsyncError(async (req, res, next) => {
  // if (!isIdValid(req.params.id)) {
  //   return next(new AppError('invalid id', 400));
  // }
  const user = await User.findById(req.params.id)
    .populate({
      path: 'questions',
      populate: {
        path: 'author',
        model: 'User',
      },
    })
    .populate({
      path: 'answers',
      populate: {
        path: 'author',
        model: 'User',
      },
    })
    .exec();

  if (!user) {
    return next(new AppError('user not found', 404));
  }
  res.status(200).json({
    status: 'success',
    data: { user },
  });
});

exports.updateUser = catchAsyncError(async (req, res, next) => {
  // if (!isIdValid(req.params.id)) {
  //   return next(new AppError('invalid id', 400));
  // }

  const newUser = await User.findOneAndUpdate(req.params.id, req.body, {
    new: true,
  });

  if (!newUser) {
    return next(new AppError('user not found', 404));
  }
  res.status(200).json({
    status: 'sucess',
    data: { newUser },
  });
});

exports.deleteUser = catchAsyncError(async (req, res, next) => {
  // if (!isIdValid(req.params.id)) {
  //   return next(new AppError('invalid id', 400));
  // }

  const user = await User.findByIdAndDelete(req.params.id);
  const answers = await Answer.deleteMany({ author: req.params.id });
  const questions = await Question.deleteMany({ author: req.params.id });
  res.status(200).json({
    staus: 'success',
    data: { user },
  });
});

//follow a user
exports.followUser = catchAsyncError(async (req, res) => {
  const followingId = req.params.id;
  const { followerId } = req.body;

  // if (!isIdValid(id) || !isIdValid(_id)) {
  //   return next(new AppError('invalid id'));
  // }

  await User.findByIdAndUpdate(
    followerId,
    { $addToSet: { followings: followingId } },
    { new: true }
  );
  const user = await User.findByIdAndUpdate(
    followingId,
    { $addToSet: { followers: followerId } },
    { new: true }
  )
    .populate({
      path: 'questions',
      populate: {
        path: 'author',
        model: 'User',
      },
    })
    .populate({
      path: 'answers',
      populate: {
        path: 'author',
        model: 'User',
      },
    })
    .exec();
  res.status(200).json({
    status: 'sucess',
    data: { user },
  });
});

//unfollow a user
exports.unfollowUser = catchAsyncError(async (req, res, next) => {
  const followingId = req.params.id;
  const { followerId } = req.body;

  // if (!isIdValid(id) || !isIdValid(_id)) {
  //   return next(new AppError('invalid id'));
  // }

  await User.findByIdAndUpdate(
    followerId,
    { $pull: { followings: followingId } },
    { new: true }
  );
  const user = await User.findByIdAndUpdate(
    followingId,
    { $pull: { followers: followerId } },
    { new: true }
  )
    .populate({
      path: 'questions',
      populate: {
        path: 'author',
        model: 'User',
      },
    })
    .populate({
      path: 'answers',
      populate: {
        path: 'author',
        model: 'User',
      },
    })
    .exec();
  res.status(200).json({
    status: 'sucess',
    data: { user },
  });
});

//get followers
exports.getfollowers = catchAsyncError(async (req, res) => {
  const { id } = req.params;

  // if (!isIdValid(id) || !isIdValid(_id)) {
  //   return next(new AppError('invalid id'));
  // }

  const user = await User.findById(id);
  const followers = await User.find({ _id: { $in: user.followers } });
  res.status(200).json({
    status: 'success',
    data: { followers },
  });
});

//get following
exports.getfollowing = catchAsyncError(async (req, res) => {
  const { id } = req.params;
  // if (!isIdValid(id) || !isIdValid(_id)) {
  //   return next(new AppError('invalid id'));
  // }

  const user = await User.findById(id);
  const following = await User.find({ _id: { $in: user.followings } });
  res.status(201).json({
    status: 'success',
    data: { following },
  });
});
