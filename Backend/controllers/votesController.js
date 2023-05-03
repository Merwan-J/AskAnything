const Question = require('../models/questionsModel');
const Answer = require('../models/answerModel');

exports.upvote = async (req, res) => {
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
      return res.status(400).send('Invalid item type');
  }

  res.status(201).json({
    status: 'success',
    data: { likes: item.likes.length, dislikes: item.dislikes.length },
  });
};

exports.downvote = async (req, res) => {
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
      return res.status(400).send('Invalid item type');
  }

  res.status(201).json({
    status: 'success',
    data: { likes: item.likes.length, dislikes: item.dislikes.length },
  });
};
