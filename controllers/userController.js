const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const userModel = require('../models/userModel');

exports.getAllUsers = async (req, res) => {
  const users = await userModel.find();

  res.status(200).json({
    status: 'success',
    results: users.length,
    data: {
      users,
    },
  });
};

exports.getUser = async (req, res) => {
  const user = await userModel.findById(req.params.id);

  if (!user) {
    res.status(404).json({
      status: 'fail',
      message: 'user not found',
    });
  }

  res.status(200).json({
    status: 'success',
    data: {
      user,
    },
  });
};

exports.createUser = async (req, res) => {
  const user = await userModel.create(req.body);

  res.status(201).json({
    status: 'success',
    data: {
      user,
    },
  });
};

exports.updateUser = async (req, res) => {
  const user = await userModel.findByIdAndUpdate(req.params.id, req.body, {
    new: true,
    runValidators: true,
  });

  if (!user) {
    res.status(404).json({
      status: 'fail',
      message: 'user not found',
    });
  }

  res.status(200).json({
    status: 'success',
    data: {
      user,
    },
  });
};

exports.deleteUser = async (req, res) => {
  const user = await userModel.findByIdAndDelete(req.params.id);

  if (!user) {
    res.status(404).json({
      status: 'fail',
      message: 'user not found',
    });
  }

  res.status(204).json({
    status: 'success',
    data: null,
  });
};

exports.signup = async (req, res) => {
  try {
    // Get user input
    const { username, password } = req.body;

    // Validate user input
    if (!(username && password)) {
      res.status(400).send('All input is required');
    }

    // check if user already exist
    // Validate if user exist in our database
    const oldUser = await userModel.findOne({ username });

    if (oldUser) {
      return res.status(409).send('User Already Exist. Please Login');
    }

    //Encrypt user password
    const encryptedPassword = await bcrypt.hash(password, 10);

    // Create user in our database
    const user = await userModel.create({
      username: username.toLowerCase(), // sanitize: convert email to lowercase
      password: encryptedPassword,
    });

    // Create token
    const token = jwt.sign({ user_id: user._id, username }, 'secret', {
      expiresIn: '1h',
    });
    // save user token
    user.token = token;

    // return new user
    res.status(200).json({
      status: 'success',
      data: {
        user,
        token,
      },
    });
  } catch (err) {
    console.log(err);
    return null;
  }
  // Our register logic ends here
};

exports.login = async (req, res) => {
  const { username, password } = req.body;

  if (!username || !password) {
    res.status(400).json({
      message: 'Please provide your email and password',
    });
  }

  const user = await userModel.findOne({ username }).select('+password');

  if (!user || !(await bcrypt.compare(password, user.password))) {
    return res
      .status(401)
      .json({ status: 'fail', message: 'Invalid username or password' });
  }

  const token = jwt.sign({ id: user._id, username }, 'secret', {
    expiresIn: '1h',
  });

  user.token = token;

  res.status(200).json({
    status: 'success',
    data: {
      user,
      token,
    },
  });
};
