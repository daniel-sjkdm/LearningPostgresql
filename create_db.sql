-- CREATE DATABASE hospital ENCODING UFT8;


CREATE TYPE PERSON_GENDER AS ENUM (
    'Male',
    'Female'
);

CREATE TYPE PERSON_ROLE AS ENUM (
    'patient',
    'doctor'
);

CREATE TYPE SPECIALITY_TYPE AS ENUM (
    'XRAY',
    'MRI'
);


CREATE TABLE IF NOT EXISTS person (
    id SMALLSERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    email VARCHAR(100), 
    birthday DATE NOT NULL,
    occupation VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    gender PERSON_GENDER,
    hospital_role BOOLEAN,
    CONSTRAINT check_person_age CHECK (age > 0)
);


CREATE TABLE IF NOT EXISTS family (
    person_1_id INTEGER REFERENCES person (id),
    person_2_id INTEGER REFERENCES person (id),
    relationship VARCHAR(100),
    PRIMARY KEY (person_1_id, person_2_id)
);


CREATE TABLE IF NOT EXISTS hospital (
    id SMALLSERIAL PRIMARY KEY,
    hospital_name VARCHAR(100),
    hospital_address VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS consultant_room (
    id SMALLSERIAL PRIMARY KEY,
    hospital_id INTEGER REFERENCES hospital (id),
    room_name VARCHAR(10)
);


CREATE TABLE IF NOT EXISTS speciality (
    id SMALLSERIAL PRIMARY KEY, 
    speciality_name VARCHAR(50) NOT NULL,
    cost MONEY NOT NULL
);


CREATE TABLE IF NOT EXISTS appointment (
    id SMALLSERIAL PRIMARY KEY, 
    patient_id INTEGER REFERENCES person (id),
    doctor_id INTEGER REFERENCES person (id),
    speciality_id INTEGER REFERENCES speciality (id),
    consultant_room_id INTEGER REFERENCES consultant_room (id),
    hospital_id INTEGER REFERENCES hospital (id),
    starts TIMESTAMP NOT NULL, 
    ends TIMESTAMP NOT NULL,
    CONSTRAINT check_appointment CHECK (starts > ends)
);


CREATE TABLE IF NOT EXISTS record (
    id SMALLSERIAL PRIMARY KEY, 
    appointment_id INTEGER REFERENCES appointment (id),
    record_description TEXT NOT NULL,
    created TIMESTAMP
);


CREATE TABLE IF NOT EXISTS images (
    id SMALLSERIAL PRIMARY KEY,
    record_id INTEGER REFERENCES record (id),
    archive VARCHAR(100)
);