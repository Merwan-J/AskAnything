const express = require('express');
const userRouter = require('./routes/userRoutes');
const answerRouter = require('./routes/answerRoutes');
const questionsRouter = require('./routes/questionsRoutes');
const authRouter = require('./routes/authRoutes');
const imageRouter = require('./routes/imageRoutes');
const votesRouter = require('./routes/votesRouter');
const searchRouter = require('./routes/searchRoutes');

const app = express();
const prefix = '/api/v1';

app.use(express.json());

// for now accessing paths are with no jwt token, if needed just put 'auth' middleware
app.use(`${prefix}/users`, userRouter);
app.use(`${prefix}/auth`, authRouter);
app.use(`${prefix}/uploads`, imageRouter);
app.use(`${prefix}/questions`, questionsRouter);
app.use(`${prefix}/answers`, answerRouter);
app.use(`${prefix}/votes`, votesRouter);
app.use(`${prefix}/search`, searchRouter);

app.use((err, req, res, next) => {
  if (err.name === 'UnauthorizedError') {
    res.status(401).send('Invalid token');
  }
});

//404 response
app.all('*', (req, res) => {
  res.status(404).json({
    status: 'fail',
    message: `Can't find ${req.originalUrl}`,
  });
});

module.exports = app;
