CREATE TABLE doctors (
id SERIAL PRIMARY KEY, 
first_name TEXT, 
last_name TEXT, 
specialty TEXT 
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY, 
    first_name TEXT, 
    last_name TEXT, 
    specialty TEXT
);

CREATE TABLE visits (
    id SERIAL PRIMARY KEY, 
    doctor_id INTEGER, 
    patient_id INTEGER,
    diagnosis_id INTEGER
);

CREATE TABLE diagnosis (
    id SERIAL PRIMARY KEY,
    visit_id INTEGER,
    disease INTEGER
);

CREATE TABLE disease (
    id SERIAL PRIMARY KEY,
    patient_id TEXT, 
    disease TEXT
);