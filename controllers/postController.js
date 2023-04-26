const Post = require('../models/postModel');

exports.getAllPosts = async (req, res) => {
  const posts = await Post.find();

  res.status(200).json({
    status: 'success',
    results: posts.length,
    data: {
      posts,
    },
  });
};

exports.getPost = async (req, res) => {
  const post = await Post.findById(req.params.id);

  if (!post) {
    res.status(404).json({
      status: 'fail',
      message: 'Post not found',
    });
  }

  res.status(200).json({
    status: 'success',
    data: { post },
  });
};

exports.deletePost = async (req, res) => {
  const post = await Post.findByIdAndDelete(req.params.id);

  if (!post) {
    res.status(404).json({
      status: 'fail',
      message: 'Post to be deleted not found',
    });
  }

  res.status(204).json({
    status: 'success',
    data: null,
  });
};

exports.createPost = async (req, res) => {
  const newPost = await Post.create(req.body);

  res.status(201).json({
    status: 'success',
    data: {
      post: newPost,
    },
  });
};

exports.updatePost = async (req, res) => {
  const updatedPost = await Post.findByIdAndUpdate(req.params.id, req.body, {
    new: true,
    runValidators: true,
  });

  if (!updatedPost) {
    res.status(404).json({
      status: 'fail',
      message: 'Post to be updated not found',
    });
  }

  res.status(200).json({
    status: 'success',
    data: {
      post: updatedPost,
    },
  });
};
