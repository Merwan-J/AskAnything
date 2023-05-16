const Question = require('../models/questionsModel');
const Answer = require('../models/answerModel');
const { catchAsyncError } = require('../utils/catchAsyncError');
const { Next } = require('@nestjs/common');
const AppError = require('../utils/appError');

exports.upvote = catchAsyncError(async (req, res, next) => {
  const { itemId, itemType, userId } = req.body;
  let item;
  switch (itemType) {
    case 'Question':
      item = await Question.findById(itemId);
      if (item.likes.includes(userId)) {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $pull: { likes: userId } },
          { new: true }
        );
      } else {
        item = await Question.findByIdAndUpdate(
          itemId,
          { $addToSet: { likes: userId } },
          { new: true }
        );
      }

      item = await Question.findByIdAndUpdate(
        itemId,
        { $pull: { dislikes: userId } },
        { new: true }
      );

      break;
    case 'Answer':
      item = await Answer.findById(itemId);
      if (item.likes.includes(userId)) {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $pull: { likes: userId } },
          { new: true }
        );
      } else {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $addToSet: { likes: userId } },
          { new: true }
        );
      }

      item = await Answer.findByIdAndUpdate(
        itemId,
        { $pull: { dislikes: userId } },
        { new: true }
      );

      break;
    default:
      return next(new AppError('invalid item type', 400));
  }

  res.status(201).json({
    status: 'success',
    data: { likes: item.likes.length, dislikes: item.dislikes.length },
  });
});

exports.downvote = catchAsyncError(async (req, res, next) => {
  const { itemId, itemType, userId } = req.body;
  let item;

  switch (itemType) {
    case 'Question':
      item = await Question.findById(itemId);
      if (item.likes.includes(userId)) {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $pull: { dislikes: userId } },
          { new: true }
        );
      } else {
        item = await Question.findByIdAndUpdate(
          itemId,
          { $addToSet: { dislikes: userId } },
          { new: true }
        );
      }

      item = await Question.findByIdAndUpdate(
        itemId,
        { $pull: { likes: userId } },
        { new: true }
      );

      break;
    case 'Answer':
      item = await Answer.findById(itemId);
      if (item.dislikes.includes(userId)) {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $pull: { dislikes: userId } },
          { new: true }
        );
      } else {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $addToSet: { dislikes: userId } },
          { new: true }
        );
      }

      item = await Answer.findByIdAndUpdate(
        itemId,
        { $pull: { likes: userId } },
        { new: true }
      );

      break;
    default:
      return next(new AppError('invalid item type', 400));
  }

  res.status(201).json({
    status: 'success',
    data: { likes: item.likes.length, dislikes: item.dislikes.length },
  });
});
