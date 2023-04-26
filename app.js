/* eslint-disable no-console */
const jwt = require('jsonwebtoken');
const expressJwt = require('express-jwt');
const express = require('express');
const postRoute = require('./routes/postRoute');
const userRoute = require('./routes/userRoute');

const app = express();

app.use(express.json());
app.use('/api/users', userRoute);
app.use('/api/posts', postRoute);

app.use((err, req, res, next) => {
  if (err.name === 'UnauthorizedError') {
    res.status(401).send('Invalid token');
  }
});

app.all('*', (req, res, next) => {
  res.status(404).json({
    status: 'fail',
    message: 'Requested Path not found',
  });
});

module.exports = app;
