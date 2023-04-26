const express = require('express');
const app = express();

// Routes
const userRouter = require('./routes/userRoutes');

app.use(express.json());

app.use('/users', userRouter);

module.exports = app;
