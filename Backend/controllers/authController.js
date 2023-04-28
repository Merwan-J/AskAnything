const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');

const userModel = require('../models/userModel');

exports.signup = async (req, res) => {
  try {
    // Get user input
    const { email, password, name } = req.body;

    // Validate user input
    if (!(email && password && name)) {
      res.status(400).send('All input is required');
    }

    // check if user already exist
    // Validate if user exist in our database
    const oldUser = await userModel.findOne({ email });

    if (oldUser) {
      return res.status(409).send('User Already Exist. Please Login');
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
  } catch (err) {
    res.status(500).json({
      status: 'fail',
      message: err.message,
    });
  }
};

exports.login = async (req, res) => {
  const { email, password } = req.body;

  if (!email || !password) {
    res.status(400).json({
      message: 'Please provide your email and password',
    });
  }

  const user = await userModel.findOne({ email }).select('+password');

  if (!user || !(await bcrypt.compare(password, user.password))) {
    return res
      .status(401)
      .json({ status: 'fail', message: 'Invalid email or password' });
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
};
