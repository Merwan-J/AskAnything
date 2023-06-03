const User = require('../models/userModel');
const Question = require('../models/questionsModel');
const { catchAsyncError } = require('../utils/catchAsyncError');
const AppError = require('../utils/appError');

exports.search = catchAsyncError(async (req, res) => {
  // Get search query from request query string
  const { topic, title } = req.query;

  try {
    let questions;

    if (topic) {
      questions = await Question.find({ topic });
    } else if (title) {
      questions = await Question.find({
        title: { $regex: title, $options: 'i' },
      });
    } else {
      questions = await Question.find();
    }

    res.status(200).json({ success: true, data: questions });
  } catch (error) {
    console.error(error);
    res.status(500).json({ success: false, error: error.message });
  }
  // Send Results back as a response
  res.status(200).json({
    status: 'success',
    results: results.length,
    data: {
      results: questions,
    },
  });
});
