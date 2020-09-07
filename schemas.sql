-- Hierarchy
-- Cluster
-- |
-- |__ Database 1
-- |   |
-- |   |_Schema 1
-- |   | | 
-- |   | |__ Object 1 
-- |   | |__ ...
-- |   | |__ Object N
-- |   |_ ..
-- |   |_ Schema N
-- |__ ...
-- |__ Database N

CREATE SCHEMA hospital;

CREATE TABLE IF NOT EXISTS hospital.patient (
    id SMALLSERIAL PRIMARY KEY,
    fisrt_name VARCHAR(30) NOT NULL,
    second_name VARCHAR(30) NOT NULL, 
    age INTEGER CHECK (age > 0)
);
