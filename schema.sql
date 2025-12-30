CREATE DATABASE IF NOT EXISTS tms;
USE tms;

CREATE TABLE IF NOT EXISTS account (
    username VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50),
    password VARCHAR(50),
    question VARCHAR(100),
    answer VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS customer (
    username VARCHAR(50),
    id_type VARCHAR(30),
    number VARCHAR(30),
    name VARCHAR(50),
    gender VARCHAR(20),
    country VARCHAR(30),
    address VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(40),
    FOREIGN KEY (username) REFERENCES account(username)
);

CREATE TABLE IF NOT EXISTS `package` (
    id INT,
    package VARCHAR(50),
    cost VARCHAR(30),
    image VARCHAR(100)
); 
-- Note: 'package' matches usage in CreatePackage.java, but columns might vary slightly. 
-- Adjusted based on standard usage seen in similar projects and inferred inserts.
-- CreatePackage.java inserts: tid, tname, tdate, tcost. 
-- Let's adjust to match that roughly.

DROP TABLE IF EXISTS `package`;
CREATE TABLE `package` (
    id INT,
    package VARCHAR(50),
    date VARCHAR(50),
    cost INT
);

CREATE TABLE IF NOT EXISTS bookPackage (
    username VARCHAR(50),
    package VARCHAR(50),
    persons INT,
    id VARCHAR(30),
    number VARCHAR(30),
    phone VARCHAR(20),
    price INT
);

CREATE TABLE IF NOT EXISTS hotels (
    name VARCHAR(50),
    cost_per_person INT,
    food_charges INT,
    ac_charges INT
);

INSERT INTO hotels VALUES('Raddisson Blue Hotel', 3400, 1700, 1000);
INSERT INTO hotels VALUES('River View Hotel', 2400, 1600, 1000);
INSERT INTO hotels VALUES('The Taj Hotel', 4800, 1290, 2900);

CREATE TABLE IF NOT EXISTS bookHotel (
    username VARCHAR(50),
    name VARCHAR(50),
    persons INT,
    days INT,
    ac VARCHAR(10),
    food VARCHAR(10),
    id VARCHAR(30),
    number VARCHAR(30),
    phone VARCHAR(20),
    cost INT
);
