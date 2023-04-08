DROP DATABASE IF EXISTS qanda;
CREATE DATABASE qanda;

\c qanda;

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

\COPY questions FROM 'Users/yeonghwang/Downloads/questions.csv' DELIMITER ',' csv header;
\COPY answers FROM 'Users/yeonghwang/Downloads/answers.csv' DELIMITER ',' csv header;
\COPY photos FROM 'Users/yeonghwang/Downloads/answers_photos.csv' DELIMITER ',' csv header;