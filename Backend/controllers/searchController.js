const User = require('../models/userModel');
const Question = require('../models/questionsModel');

exports.search = async (req, res) => {
  try {
    // Get search query from request query string
    const searchQuery = req.query.q;
    // Check if filter is by Question or user
    // eslint-disable-next-line prefer-destructuring
    const filterBy = req.query.filterBy;

    let results = null;

    if (filterBy === 'question') {
      // Filter question by title or description containing the search query and topic if provided
      // $options: 'i' makes sure that the matches are case insensetive

      let questionQuery = {
        $or: [
          { title: { $regex: searchQuery, $options: 'i' } },
          { description: { $regex: searchQuery, $options: 'i' } },
        ],
      };

      if (req.query.topic) {
        questionQuery.topic = req.query.topic;
      }

      // Sort results by 'like' or 'createdAt' if 'like' query parameter is not provided
      const sortField = req.query.sortField === 'likes' ? 'likes' : 'createdAt';
      const sortOrder = req.query.sortOrder === '1' ? '' : '-';

      questionQuery = Question.find(questionQuery);

      results = await questionQuery.sort(sortOrder + sortField);
    } else if (filterBy === 'user') {
      // Filter users by name containing the search query
      let userQuery = {
        name: { $regex: searchQuery, $options: 'i' },
      };

      // Sort results by 'reputation'
      const sortOrder = req.query.sortOrder === '1' ? '' : '-';

      userQuery = User.find(userQuery).sort(`${sortOrder}reputation`);

      results = await userQuery;
    } else {
      // Invalid filterBy parameter
      return res.status(400).json({
        status: 'fail',
        message: 'Invalid filterBy parameter',
      });
    }
    // Send Results back as a response
    res.status(200).json({
      status: 'success',
      results: results.length,
      data: {
        results,
      },
    });
  } catch (err) {
    // Handle errors
    console.error(err);
    res.status(500).json({
      status: 'fail',
      message: 'Internal Server Error',
    });
  }
};
