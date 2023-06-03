const mongoose = require('mongoose');

const pollSchema = new mongoose.Schema(
  {
    pollid: {
      type: mongoose.Types.ObjectId,
    },
    pollTitle: {
      type: String,
      required: [true, 'A poll must have a title'],
    },
    pollOptions: [
      {
        //array of objects. each object has id, title, votes
        option: {
          title: {
            type: String,
          },
          votes: {
            type: [{ type: mongoose.Types.ObjectId, ref: 'User' }],
          },
          id: {
            type: Number,
          },
        },
      },
    ],
    author: {
      type: mongoose.Types.ObjectId,
      ref: 'User',
    },
    voteText: {
      type: String,
    },
  },
  {
    timestamps: true,
  }
);

const Poll = mongoose.model('Poll', pollSchema);
