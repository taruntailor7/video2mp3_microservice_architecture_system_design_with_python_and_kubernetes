CREATE USER IF NOT EXISTS 'auth_user'@'%' IDENTIFIED BY 'Aauth123';

CREATE DATABASE IF NOT EXISTS auth;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'%';

USE auth;

CREATE TABLE IF NOT EXISTS user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT IGNORE INTO user (email, password) VALUES ('tarun@gmail.com', 'Tarun@12');