const express = require('express');
const app = express();
const questionsRouter = require('./Quesions_Routes/routes');

app.use(express.json());

app.use('/questions', questionsRouter);

//404 response
app.all('*', (req, res) => {
    res.status(404).json({
        status: 'fail',
        message: `Can't find ${req.originalUrl}`,
    });
});

module.exports = app;