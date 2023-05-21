const User = require('./../models/userModel');
const Answer = require('./../models/answerModel');

async function isAnswerId(id) {
  // Check if the ID is from an answer
  const answer = await Answer.findOne({ _id: id });
  if (answer) {
    return true;
  }
  return false;
}

exports.addToBookmark = async (req, res) => {
  const idType = (await isAnswerId(req.body.url))
    ? 'bookmarks.answers'
    : 'bookmarks.questions';

  try {
    const updated = await User.findByIdAndUpdate(
      req.body.userId,
      { $push: { [idType]: req.body.url } },
      { new: true }
    );

    res.status(201).json({
      status: 'success',
      data: { updated },
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

exports.removeFromBookmark = async (req, res) => {
  const idType = (await isAnswerId(req.body.url))
    ? 'bookmarks.answers'
    : 'bookmarks.questions';
  try {
    const updated = await User.findOneAndUpdate(
      { _id: req.body.userId },
      { $pull: { [idType]: req.body.url } },
      { new: true }
    );
    res.status(201).json({
      status: 'success',
      data: { updated },
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

exports.getBookmarks = async (req, res) => {
  try {
    const user = await User.findById(req.body.userId);
    res.status(200).json(user.bookmarks);
  } catch (err) {
    res.json(err);
  }
};