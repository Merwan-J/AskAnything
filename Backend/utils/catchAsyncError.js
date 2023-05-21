const { MongooseError } = require('mongoose');
const AppError = require('./appError');

exports.catchAsyncError = fn => {
  return (req, res, next) => {
    fn(req, res, next).catch(err => {
      // console.log(err.message);
      next(err);
    });
  };
};
