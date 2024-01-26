CREATE TABLE region (
    id SERIAL PRIMARY KEY,
    city TEXT
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL, 
    password TEXT NOT NULL, 
    preferred_region_id INTEGER REFERENCES region
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT, 
    username TEXT,
    region_id INTEGER REFERENCES region,
    category_id INTEGER REFERENCES categories
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    cat_name TEXT
);