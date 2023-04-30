const express = require('express');

const router = express.Router();
const uploadController = require('../controllers/imageController');
const upload = require('../middlewares/multer');

router.post('/upload', upload.single('image'), uploadController.uploadImage);

module.exports = router;
