const express = require('express');
const bookmarkController = require('./../controllers/bookmarkController');

const router = express.Router();

router
  .route('/')
  .post(bookmarkController.addToBookmark)
  .delete(bookmarkController.removeFromBookmark);
//   .get(bookmarkController.getAnswers);
// router
//   .route('/:id')
//   .get(bookmarkController.getAnswer)
//   .patch(bookmarkController.updateAnswer)
//   .delete(bookmarkController.deleteAnswer);

module.exports = router;
