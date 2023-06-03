const mongoose = require('mongoose');

const userSchema = new mongoose.Schema(
  {
    name: {
      type: String,
      required: [true, 'user name is required'],
    },
    email: {
      type: String,
      required: [true, 'email is required'],
      unique: [true, 'email must be unique'],
    },
    password: {
      type: String,
      required: true,
    },
    profilePic: {
      type: String,
    },
    questions: {
      type: [{ type: mongoose.Types.ObjectId, ref: 'Question' }],
      default: [],
    },
    answers: {
      type: [{ type: mongoose.Types.ObjectId, ref: 'Answer' }],
    },
    reputation: {
      type: Number,
      default: 0,
    },
    likes: {
      type: Number,
      default: 0,
    },
    dislikes: {
      type: Number,
      default: 0,
    },
    bookmarks: [
      {
        type: mongoose.Types.ObjectId,
        ref: 'Question',
        default: [],
      },
    ],

    followers: [
      {
        type: mongoose.Types.ObjectId,
        ref: 'User',
        default: [],
      },
    ],
    followings: [
      {
        type: mongoose.Types.ObjectId,
        ref: 'User',
        default: [],
      },
    ],
    role: {
      type: String,
      enum: ['user', 'admin'],
      default: 'user',
    },
  },
  { timestamps: true }
);

userSchema.methods.incrementLikes = function() {
  this.likes += 1;
  return this.save();
};
userSchema.methods.incrementDislikes = function() {
  this.dislikes += 1;
  return this.save();
};
userSchema.methods.decrementLikes = function() {
  this.likes -= 1;
  return this.save();
};
userSchema.methods.decrementDislikes = function() {
  this.dislikes -= 1;
  return this.save();
};

userSchema.methods.updateReputation = function() {
  // Define the weightings for likes and dislikes
  const LIKE_WEIGHT = 2;
  const DISLIKE_WEIGHT = -1;

  // Define the minimum number of likes/dislikes required to affect a user's reputation
  const MIN_LIKES = 5;
  const MIN_DISLIKES = 5;

  const MIN_REPUTATION = -1000;
  const MAX_REPUTATION = 1000;

  const { likes, dislikes, reputation } = this;

  if (likes < MIN_LIKES && dislikes < MIN_DISLIKES) {
    return null;
  }
  // Apply weightings based on the user's reputation
  const weightedLikes = likes * (1 + reputation / 1000);
  const weightedDislikes = dislikes * (1 - reputation / 1000);

  // Calculate the new reputation
  const updateReputation = Math.min(
    Math.max(
      weightedLikes * LIKE_WEIGHT + weightedDislikes * DISLIKE_WEIGHT,
      MIN_REPUTATION
    ),
    MAX_REPUTATION
  );

  this.reputation = updateReputation;

  return this.save();
};

const User = mongoose.model('User', userSchema);
module.exports = User;
