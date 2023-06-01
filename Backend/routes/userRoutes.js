const express = require('express');
const userController = require('./../controllers/userController');

const router = express.Router();

router
  .route('/')
  .get(userController.getUsers)
  .post(userController.createUser);

router
  .route('/:id')
  .get(userController.getUser)
  .patch(userController.updateUser)
  .delete(userController.deleteUser);

//getfollowers
router.route('/:id/followers').get(userController.getfollowers);

//getfollowing
router.route('/:id/following').get(userController.getfollowing);

//follow a user
router.route('/:id/follow').post(userController.followUser);

//unfollow a user
router.route('/:id/unfollow').post(userController.unfollowUser);

module.exports = router;
