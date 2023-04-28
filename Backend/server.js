const dotenv = require('dotenv');
const mongoose = require('mongoose');
const app = require('./app');

dotenv.config({ path: './config.env' });

const DB = process.env.DATABASE;

mongoose.connect(DB);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`listening at http://localhost:${PORT}`);
});
