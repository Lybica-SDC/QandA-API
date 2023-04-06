import mongoose from 'mongoose';

const questionSchema = mongoose.Schema({
  product_id: {
    type: Number,
    required: true
  },
  question_id: {
    type: Number
  },
  body: {
    type: String
  },
  date: {
    type: Number
  },
  asker_name: {
    type: String
  },
  helpulness: {
    type: Number
  },
  reported: {
    type: Boolean
  }
});

const answerSchema = mongoose.Schema({
  question_id: {
    type: Number
  },
  answer_id: {
    type: Number
  },
  body: {
    type: String
  },
  date: {
    type: Date
  },
  answerer_name: {
    type: String
  },
  answerer_email: {
    type: String
  },
  helpfulness: {
    type: Number
  },
  reported: {
    type: Boolean
  }
});

const photoSchema = mongoose.Schema({
  answer_id: {
    type: Number
  },
  url: {
    type: String
  }
});