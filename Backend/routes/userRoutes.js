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
router
  .route('/:id/followers')
  .get(userController.getfollowers)


//getfollowing
router
  .route('/:id/following')
  .get(userController.getfollowing)


//follow a user
router
  .route('/:id/follow/:id')
  .patch(userController.followUser)


//unfollow a user
router
  .route('/:id/unfollow/:id')
  .patch(userController.unfollowUser)

module.exports = router;
