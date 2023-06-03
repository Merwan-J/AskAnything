const AppError = require('../utils/appError');

const handleCastErrorDB = err => {
  const message = `Invalid ${err.path}: ${err.value}`;
  return new AppError(message, 400);
};
const handleDuplicateFieldsDB = err => {
  // console.log(Object.values(err.keyValue));
  const value = Object.values(err.keyValue)[0];
  const key = Object.keys(err.keyValue)[0];
  const message = `Duplicate field value: ${value}. Please use another value for ${key} field.`;
  return new AppError(message, 400);
};

const sendDevError = (err, req, res) => {
  console.log(err);
  res.status(err.statusCode).json({
    status: err.status,
    name: err.name,
    message: err.message,
    code: err.code,
    error: err,

    // stack: err.stack,
  });
};

const sendProdError = (err, req, res) => {
  if (err.isOperational) {
    res.status(err.statusCode).json({
      status: err.status,
      message: err.message,
    });
  } else {
    res.status(500).json({
      status: 'error',
      message: 'Something went wrong',
    });
  }
};
module.exports = (err, req, res, next) => {
  err.statusCode = err.statusCode || 500;
  err.status = err.status || 'error';

  // if (err.name === 'UnauthorizedError') {
  //   res.status(401).send('Invalid token');
  // }

  if (process.env.NODE_ENV === 'development') {
    sendDevError(err, req, res);
  } else if (process.env.NODE_ENV === 'production') {
    let error = { ...err };

    if (error.name === 'CastError') {
      error = handleCastErrorDB(error);
    }
    if (error.code === 11000) {
      error = handleDuplicateFieldsDB(error);
    }
    console.log(err);
    sendProdError(error, req, res);
  }
  // next(err);
};
