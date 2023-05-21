const mongoose = require('mongoose');

const Topics = {
  Technology: 'technology',
  Education: 'education',
  Relationships: 'relationships',
  Entertainment: 'entertainment',
  Bussiness: 'bussiness',
  Politics: 'politics',
  Health: 'health',
  Science: 'science',
  Food: 'food',
  Sports: 'sports',
  Personal: 'personal',
  Art: 'art',
  Other: 'other',
  Religion: 'religion',
  Beauty: 'beauty',
  Philosophy: 'philosophy',
  Music: 'music',
  Society: 'society',
  Family: 'family',
};

const questionsSchema = new mongoose.Schema(
  {
    question: {
      title: {
        type: String,
        // required: true,
      },
      description: {
        type: String,
        required: true,
      },
    },
    author: {
      type: String,
      required: true,
    },
    anonymous: {
      type: Boolean,
      // required: true,
    },
    answers: [
      {
        type: Array,
      },
    ],
    topic: {
      type: String,
      required: true,
      enum: Object.values(Topics),
    },
    likes: {
      type: [mongoose.Schema.Types.ObjectId],
      ref: 'User',
      default: [],
    },
    dislikes: {
      type: [mongoose.Schema.Types.ObjectId],
      ref: 'User',
      default: [],
    },

    image: {
      type: String,
      contentType: String,
    },
  },
  { timestamps: true }
);

module.exports = mongoose.model('Question', questionsSchema);
