const Question = require('../models/questionsModel');
const Answer = require('../models/answerModel');
const { catchAsyncError } = require('../utils/catchAsyncError');
const AppError = require('../utils/appError');

exports.upvote = catchAsyncError(async (req, res, next) => {
  const { itemId, itemType, userId } = req.body;
  let item;
  let author;
  console.log(itemId, itemType, userId);

  switch (itemType) {
    case 'Question':
      item = await Question.findById(itemId);
      author = item.author;

      if (item.likes.includes(userId)) {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $pull: { likes: userId } },
          { new: true }
        );

        if (!item.anonymous) await author.decrementLikes();
      } else {
        item = await Question.findByIdAndUpdate(
          itemId,
          { $addToSet: { likes: userId } },
          { new: true }
        );

        if (!item.anonymous) await author.incrementLikes();
      }

      item = await Question.findByIdAndUpdate(
        itemId,
        { $pull: { dislikes: userId } },
        { new: true }
      );

      break;
    case 'Answer':
      item = await Answer.findById(itemId);
      author = item.author;

      if (item.likes.includes(userId)) {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $pull: { likes: userId } },
          { new: true }
        );
        if (!item.anonymous) await author.decrementLikes();
      } else {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $addToSet: { likes: userId } },
          { new: true }
        );
        if (!item.anonymous) await author.incrementLikes();
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
  if (!item.anonymous) await author.updateReputation();

  res.status(201).json({
    status: 'success',
    data: { likes: item.likes.length, dislikes: item.dislikes.length },
  });
});

exports.downvote = catchAsyncError(async (req, res, next) => {
  const { itemId, itemType, userId } = req.body;
  let item;
  let author;

  switch (itemType) {
    case 'Question':
      item = await Question.findById(itemId);
      author = item.author;
      if (item.dislikes.includes(userId)) {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $pull: { dislikes: userId } },
          { new: true }
        );

        if (!item.anonymous) await author.decrementDislikes();
      } else {
        item = await Question.findByIdAndUpdate(
          itemId,
          { $addToSet: { dislikes: userId } },
          { new: true }
        );

        if (!item.anonymous) await author.incrementDislikes();
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

        if (!item.anonymous) await author.decrementDislikes();
      } else {
        item = await Answer.findByIdAndUpdate(
          itemId,
          { $addToSet: { dislikes: userId } },
          { new: true }
        );
        if (!item.anonymous) await author.incrementDislikes();
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
  if (!item.anonymous) await author.updateReputation();
  res.status(201).json({
    status: 'success',
    data: { likes: item.likes.length, dislikes: item.dislikes.length },
  });
});
