const mongoose = require('mongoose');
const User = require('./../models/userModel');
const followSchema = new mongoose.Schema({
    follower: [{
        type: [mongoose.Types.ObjectId],
        ref: 'User',
        required: true
    }],
    following: {
        type: [mongoose.Types.ObjectId],
        ref: 'User',
        required: true
    }
});