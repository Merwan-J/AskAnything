const User = require('./../models/userModel');
const {
  Types: { ObjectId },
} = require('mongoose');

const isIdValid = id => {
  return ObjectId.isValid(id) && new ObjectId(id).toString === id;
};

exports.createUser = async (req, res) => {
  try {
    const user = await User.create(req.body);

    res.status(201).json({
      status: 'success',
      data: { user },
    });
  } catch (e) {
    throw err;
  }
};
exports.getUsers = async (req, res) => {
  try {
    const users = await User.find();
    res.status(200).json({
      status: 'success',
      results: users.length,
      data: { users },
    });
  } catch (err) {
    throw err;
  }
};
exports.getUser = async (req, res) => {
  if (!isIdValid(req.params.id)) {
    throw err;
  }
  try {
    const user = await User.findById(req.params.id);
    res.status(200).json({
      status: 'success',
      data: { user },
    });
  } catch (err) {
    throw err;
  }
};
exports.updateUser = async (req, res) => {
  //   console.log('updateing');
  if (!isIdValid(req.params.id)) {
    throw err;
  }
  try {
    const newUser = await User.findByIdAndUpdate(req.params.id, req.body, {
      new: true,
    });
    res.status(200).json({
      status: 'sucess',
      data: { newUser },
    });
  } catch (err) {
    // console.log(err.message);
    throw err;
  }
};
exports.deleteUser = async (req, res) => {
  if (!isIdValid(req.params.id)) {
    throw err;
  }
  try {
    const user = await User.findByIdAndDelete(req.params.id);
    res.status(200).json({
      staus: 'success',
      data: { user },
    });
  } catch (err) {
    throw err;
  }
};
