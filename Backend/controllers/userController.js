const { Types: { ObjectId } } = require('mongoose');

const User = require('./../models/userModel');

const isIdValid = id => {
  return ObjectId.isValid(id) && new ObjectId(id).toString() === id;
};

exports.createUser = async (req, res) => {
  try {
    const user = await User.create(req.body);

    res.status(201).json({
      status: 'success',
      data: { user },
    });
  } catch (err) {
    throw err;
  }
};
exports.getUsers = async (req, res) => {
  console.log(req.params);
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
    res.status(400).json({
      status: 'failed',
      data: { message: 'Invalid Id' },
    });
  }
  try {
    const user = await User.findById(req.params.id);
    res.status(200).json({
      status: 'success',
      data: { user },
    });
  } catch (err) {
    res.status(500).json({
      status: 'failed',
      data: { message: err.message },
    });
  }
};
exports.updateUser = async (req, res) => {
  if (!isIdValid(req.params.id)) {
    throw Error;
  }
  try {
    const newUser = await User.findOneAndUpdate(req.params.id, req.body, {
      new: true,
    });
    res.status(200).json({
      status: 'sucess',
      data: { newUser },
    });
  } catch (err) {
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


//follow a user
exports.followUser = async (req, res) => {
  const { id } = req.params;
  const { _id } = req.body;

  if (!isIdValid(id)) {
    res.status(404).json({
      status: 'failed',
      data: { message: 'invalid id' },
    })
  }
  try {
    await User.findByIdAndUpdate(
      _id,
      { $addToSet: { followings: id } },
      { new: true }
    );
    const user = await User.findByIdAndUpdate(
      id,
      { $addToSet: { followers: _id } },
      { new: true }
    );
    res.status(201).json({
      status: 'sukcess',
      data: { user },
    });
  } catch (err) {
    res.status(400).json({
      status: 'failed',
      data: { message: err.message },
    });
  }

}

//unfollow a user
exports.unfollowUser = async (req, res) => {
  const { id } = req.params;
  const { _id } = req.body;

  if (!isIdValid(id)) {
    res.status(404).json({
      status: 'failed',
      data: { message: 'invalid id' },
    })
  }
  try {
    await User.findByIdAndUpdate(
      _id,
      { $pull: { followings: id } },
      { new: true }
    );
    const user = await User.findByIdAndUpdate(
      id,
      { $pull: { followers: _id } },
      { new: true }
    );
    res.status(201).json({
      status: 'sukcess',
      data: { user },
    });
  } catch (err) {
    res.status(400).json({
      status: 'failed',
      data: { message: err.message },
    });
  }

}

//get followers
exports.getfollowers = async (req, res) => {
  const { id } = req.params;

  if (!isIdValid(req.params.id)) {
    throw res.status(404).json({
      status: 'failed',
      data: { message: 'invalid id' },
    });
  }
  try {
    const user = await User.findById(id)
    const followers = await User.find({ _id: { $in: user.followers } });
    res.status(200).json({
      status: 'success',
      data: { followers },
    });
  } catch (err) {
    res.status(400).json({
      status: 'failed',
      data: { message: err.message },
    });
  }
}

//get following
exports.getfollowing = async (req, res) => {
  const { id } = req.params
  if (!isIdValid(id)) {
    throw res.status(404).json({
      status: 'failed',
      data: { message: 'invalid id' },
    })
  }
  try {
    const user = await User.findById(id)
    const following = await User.find({ _id: { $in: user.followings } })
    res.status(201).json({
      status: 'success',
      data: { following },
    })
  } catch (err) {
    res.status(400).json({
      status: 'failed',
      data: { message: err.message },
    });
  }
}