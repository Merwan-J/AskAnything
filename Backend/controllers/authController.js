const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');

const userModel = require('../models/userModel');
const { catchAsyncError } = require('../utils/catchAsyncError');
const AppError = require('../utils/appError');
const User = require('../models/userModel');

exports.signup = catchAsyncError(async (req, res, next) => {
  // Get user input
  const { email, password, name } = req.body;

  // Validate user input
  if (!(email && password && name)) {
    return next(new AppError('all input is required', 400));
  }

  // check if user already exist
  // Validate if user exist in our database
  const oldUser = await userModel.findOne({ email });

  if (oldUser) {
    return next(new AppError('User already exist. Please login', 400));
  }

  //Encrypt user password
  const encryptedPassword = await bcrypt.hash(password, 10);

  // Create user in our database
  const user = await userModel.create({
    email: email.toLowerCase(), // sanitize: convert email to lowercase
    password: encryptedPassword,
    name,
  });

  // Create token
  const token = jwt.sign({ user_id: user._id, email }, 'secret', {
    expiresIn: '12h',
  });

  // return new user
  res.status(200).json({
    status: 'success',
    data: {
      user,
      token,
    },
  });
});

exports.login = catchAsyncError(async (req, res, next) => {
  const { email, password } = req.body;

  if (!email || !password) {
    return next(new AppError('Please provide your email and password', 400));
  }

  const user = await userModel.findOne({ email }).select('+password');

  if (!user || !(await bcrypt.compare(password, user.password))) {
    return next(new AppError('Invalid email or password', 400));
  }

  const token = jwt.sign({ id: user._id, email }, 'secret', {
    expiresIn: '1h',
  });

  res.status(200).json({
    status: 'success',
    data: {
      user,
      token,
    },
  });
});
