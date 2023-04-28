const express = require('express');
const userRouter = require('./routes/userRoutes');
const answerRouter = require('./routes/answerRouter');
const questionsRouter = require('./routes/questionsRoutes');
const authRouter = require('./routes/authRoutes');
const auth = require('./middlewares/auth');
const imageRoute = require('./routes/imageRoutes');

const app = express();
const prefix = '/api/v1';

app.use(express.json());

// for now accessing paths are with no jwt token, if needed just put 'auth' middleware
app.use(`${prefix}/users`, userRouter);
app.use(`${prefix}/auth`, authRouter);
app.use(`${prefix}/uploads`, imageRoute);
app.use(`${prefix}/questions`, questionsRouter);
app.use(`${prefix}/answers`, answerRouter);



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
