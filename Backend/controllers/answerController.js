const Answer = require('./../models/answerModel');
const User = require('./../models/userModel');

exports.createAnswer = async (req, res) => {
  try {
    const answer = await Answer.create(req.body);

    res.status(201).json({
      status: 'success',
      data: { answer },
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};
exports.getAnswers = async (req, res) => {
  try {
    const answers = await Answer.find();
    res.status(200).json({
      status: 'success',
      results: answers.length,
      data: { answers },
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};
exports.getAnswer = async (req, res) => {
  //   if (!isIdValid(req.params.id)) {
  //     res.send('mncasee');

  try {
    const answer = await Answer.findById(req.params.id);
    res.status(200).json({
      status: 'success',
      data: { answer },
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};
exports.updateAnswer = async (req, res) => {
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
exports.deleteAnswer = async (req, res) => {
  try {
    await User.updateMany(
      { 'bookmarks.answers': req.params.id },
      { $pull: { 'bookmarks.answers': req.params.id } }
    );
    const answer = await Answer.findByIdAndDelete(req.params.id);

    if (!answer) {
      return res.status(404).send('there is no answer by this id');
    }
    res.status(200).json({
      staus: 'success',
      data: { answer },
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};