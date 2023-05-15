const dotenv = require('dotenv');
const mongoose = require('mongoose');
// process.on('uncaughtException', err => {
//   console.log('Uncaught Exception!!! Shutting down');
//   console.log(err.name, err.message);

//   process.exit(1);
// });

dotenv.config({ path: './config.env' });

const app = require('./app');

const DB = process.env.DATABASE;

mongoose.connect(DB);

const PORT = process.env.PORT || 3000;

server = app.listen(PORT, () => {
  console.log(`listening at http://localhost:${PORT}`);
});

process.on('unhandledRejection', err => {
  console.log(err.name, err.message);
  server.close(() => {
    process.exit(1);
  });
});
