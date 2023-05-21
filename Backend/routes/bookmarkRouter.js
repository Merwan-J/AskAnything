const express = require('express');
const bookmarkController = require('./../controllers/bookmarkController');

const router = express.Router();

router
  .route('/')
  .post(bookmarkController.addToBookmark)
  .delete(bookmarkController.removeFromBookmark)
  .get(bookmarkController.getBookmarks);


module.exports = router;