CREATE DATABASE qanda;

CREATE TABLE questions(
  id SERIAL PRIMARY KEY,
  product_id INTEGER,
  body VARCHAR,
  date_written BIGINT,
  asker_name VARCHAR,
  asker_email VARCHAR,
  reported BOOLEAN DEFAULT FALSE,
  helpful INTEGER DEFAULT 0
);

CREATE TABLE answers(
  id SERIAL PRIMARY KEY,
  question_id INTEGER REFERENCES questions(id),
  body VARCHAR,
  date_written BIGINT,
  answerer_name VARCHAR,
  answerer_email VARCHAR,
  reported BOOLEAN DEFAULT FALSE,
  helpful INTEGER DEFAULT 0
);

CREATE TABLE photos(
  id SERIAL PRIMARY KEY,
  answer_id INTEGER REFERENCES answers(id),
  url VARCHAR
);
