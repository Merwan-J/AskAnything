const express = require('express');

const app = express();

// Routes
const userRouter = require('./routes/userRoutes');
const imageRoute = require('./routes/imageRoutes');

app.use(express.json());

app.use('/users', userRouter);
app.use('/uploads', imageRoute);

//404 response
app.all('*', (req, res) => {
  res.status(404).json({
    status: 'fail',
    message: `Can't find ${req.originalUrl}`,
  });
});

module.exports = app;
