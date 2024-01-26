CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT,
    city TEXT
);

CREATE TABLE player (
    id SERIAL PRIMARY KEY,
    name TEXT, 
    position Text,
    team_id INTEGER REFERENCES teams
);

CREATE TABLE ref (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    date DATE,
    ref_id INTEGER REFERENCES ref,
    season_id   INTEGER REFERENCES season
);

CREATE TABLE game_results (
    id SERIAL PRIMARY KEY,
    team_id INTEGER REFERENCES teams,
    game_id INTEGER REFERENCES games,
    results TEXT
);

CREATE TABLE goals (
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES player, 
    game_id INTEGER REFERENCES games
);

CREATE TABLE stats (
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES player,
    game_id INTEGER REFERENCES games,
    team_id INTEGER REFERENCES teams
);

CREATE TABLE season (
    id SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE
);