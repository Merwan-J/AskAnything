const express = require('express');
const app = express();

// Routes
const userRouter = require('./routes/userRoutes');
const answerRouter = require('./routes/answerRouter');

app.use(express.json());

app.use('/users', userRouter);
app.use('/answers', answerRouter);

//404 response
app.all('*', (req, res) => {
  res.status(404).json({
    status: 'fail',
    message: `Can't find ${req.originalUrl}`,
  });
});

module.exports = app;
