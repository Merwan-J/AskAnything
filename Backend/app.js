const express = require('express');
const app = express();

// Routes
const userRouter = require('./routes/userRoutes');
const questionsRouter = require('./routes/questionsRoutes');

app.use(express.json());

app.use('/users', userRouter);
app.use('/questions', questionsRouter);

//404 response
app.all('*', (req, res) => {
  res.status(404).json({
    status: 'fail',
    message: `Can't find ${req.originalUrl}`,
  });
});

module.exports = app;
