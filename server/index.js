require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const router = require('./router.js');
const db = require('./postgreSQL/dbpool.js');

const app = express();
const port = process.env.PORT || 3001;

app.use(morgan('dev'));
app.use(express.json());
app.use(cors());
app.use('/', router);

app.listen(port, (error) => {
  if (!error) {
    console.log(`Server running on port ${port}.`);
  } else {
    console.log('Error in server setup');
  }
});