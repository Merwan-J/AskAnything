const cloudinary = require('../utils/cloudinary');

exports.uploadImage = function(req, res) {
  cloudinary.uploader.upload(req.file.path, function(err, result) {
    if (err) {
      console.log(err);
      return res.status(500).json({
        success: false,
        message: 'Error',
      });
    }

    res.status(201).json({
      success: true,
      message: 'Uploaded!',
      data: result,
    });
  });
};
