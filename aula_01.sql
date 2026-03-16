CREATE DATABASE IF NOT EXISTS EnterpriseDB;
USE EnterpriseDB;

CREATE SCHEMA IF NOT EXISTS Management;

CREATE TABLE Management.Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    birth_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Management.Users (full_name, email, birth_date) VALUES 
('Rafael Silva', 'rafael.silva@corporate.com', '2007-02-13'),
('José Ricardo', 'j.ricardo@provider.net', '1998-10-30'),
('Ana Oliveira', 'ana.oliveira@techsolutions.com', '2010-11-13'),
('João Paulo', 'jp.balmeida@finances.com', '2019-03-27'),
('Julius Rock', 'julius.rock@freelancer.com', '1978-07-20');

UPDATE Management.Users
SET email = 'contato.corinthians@fifa.com'
WHERE email = 'rafael.silva@corporate.com';

SELECT 
    user_id AS ID, 
    full_name AS Nome, 
    email AS 'E-mail', 
    birth_date AS 'Data de Nascimento'
FROM Management.Users;