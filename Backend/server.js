const dotenv = require('dotenv');
const mongoose = require('mongoose');

dotenv.config({ path: './config.env' });

const app = require('./app');

const DB = process.env.DATABASE;

mongoose.connect(DB);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`listening at http://localhost:${PORT}`);
});
