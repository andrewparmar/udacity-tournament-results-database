-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;

\c tournament;

DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS match_results;

CREATE TABLE players ( id SERIAL PRIMARY KEY,
					   name TEXT,
                       time TIMESTAMP DEFAULT CURRENT_TIMESTAMP );


CREATE TABLE match_results ( game_id SERIAL PRIMARY KEY,
					 		 winner INTEGER,
					 		 loser INTEGER,
                     		 time TIMESTAMP DEFAULT CURRENT_TIMESTAMP );
