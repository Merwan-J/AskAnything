const {
  Types: { ObjectId },
} = require('mongoose');
const User = require('./../models/userModel');
const questionController = require("../controllers/questionsController");
const Question = require("../models/questionsModel")

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

  } catch (err) {
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

exports.explore = async (req, res) => {

  try{


    const page = req.params.page * 1 || 1
    const limit = req.params.limit * 1 || 20
    const skip = (page-1) * limit
  
    let questions = questionController.getAllQuestions();
    questions = questions.sort("-createdAt");
    questions = questions.skip(skip).limit(limit);
  
  
    const results = await questions;
  
    res.status(200).json({
      staus:"success",
      results: questions.length,
      page: page,
      data: {questions}
    })

  }catch(err){
    res.status(500).json({
      status : "fail",
      message: err.message
    })
  }
}


exports.following = async (req,res)=>{


try{

  const currentUser = await getUser(req.params.id)
  const followingIds = currentUser.following
  
  let questions = Question.find({ author: { $in: followingIds } });
  
  
  const page = req.params.page * 1 || 1
  const limit = req.params.limit * 1 || 20
  const skip = (page-1) * limit
  
  questions = questions.sort("-createdAt");
  questions = questions.skip(skip).limit(limit);
    
    
  const results = await questions;

  res.status(200).json({
    status:"success",
    results:results.length,
    page:page,
    data:{results}
  })
}
catch(err){
  res.status(500).json({
    status:"fail",
    message: err.message
  })
}

}