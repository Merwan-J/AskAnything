const mongoose = require('mongoose');

const Schema = mongoose.Schema;

const BookmarkSchema = new Schema({
  url: {
    type: String,
    required: true,
    trim: true,
  },
  title: {
    type: String,
    required: true,
    trim: true,
  },
  userId: {
    required: true,
    type: Schema.Types.ObjectId,
    ref: 'User',
  },
});

module.exports = mongoose.model('Bookmark', BookmarkSchema);
