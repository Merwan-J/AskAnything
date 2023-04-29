const Bookmark = require('./../models/bookmarkModel');

exports.createBookmark = async (req, res) => {
  try {
    const bookmark = await Bookmark.create(req.body);

    res.status(201).json({
      status: 'success',
      data: { bookmark },
    });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};
