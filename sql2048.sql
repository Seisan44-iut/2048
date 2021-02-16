DROP TABLE IF EXISTS PLAYERS;
DROP TABLE IF EXISTS GAMES;

CREATE TABLE PLAYERS
(
  login TEXT NOT NULL PRIMARY KEY ,
  password TEXT  NOT NULL
);


INSERT INTO PLAYERS
(`login`, `password`)
VALUES
('titi', '$6$VsDCW/kqInRv$/bkDT4rmkNLGo704srZE1riI4u7IUUcSuuEqrdkeBJ.3RcsnEO.ihAnWvIWJ0fSoP3hVa/OpWTbhi50xQhzEk1'),
('toto', '$6$RTRffX4m9FBU$GQPzOIuRByEJMeT8r9fydj8eKfi7yurb0SQiT./3pHnG5ni2f96gboxLE4LZgCgEVMWMP6z.AxaOM8KaWJCmn0'),
('emilien', '$2y$10$qducOZiS1E0MfODE1BFhQuQKac353eC5TUm7wPrpLy47wsjNNBvzm');


CREATE TABLE GAMES (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  login TEXT CONSTRAINT fk_data_players REFERENCES PLAYERS(login),
  state TEXT NOT NULL,
  score INTEGER NOT NULL,
  grid TEXT NOT NULL,
  scoreLastMove INTEGER NOT NULL,
  gridLastMove TEXT NOT NULL
);