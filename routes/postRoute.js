const express = require('express');
const postController = require('../controllers/postController');
const auth = require('../middlewares/auth');

const router = express.Router();

router.get('', postController.getAllPosts);
router.post('', auth, postController.createPost);

router
  .route('/:id')
  .get(postController.getPost)
  .patch(auth, postController.updatePost)
  .delete(auth, postController.deletePost);

module.exports = router;
