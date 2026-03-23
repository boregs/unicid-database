CREATE DATABASE ConectaMais IF NOT EXISTS ConectaMais;
USE ConectaMais;

CREATE SCHEMA IF NOT EXISTS production;

CREATE TABLE production.users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    cpf VARCHAR(11)
    email VARCHAR(100),
    date_of_birth DATE,
    coutry VARCHAR(2)
);

INSERT INTO production.users (first_name, last_name, cpf, email, date_of_birth, country) VALUES
('Ricardo', 'Almeida', '12345678901', 'ricardo.almeida@email.com', '1985-03-12', 'BR'),
('Beatriz', 'Souza', '23456789012', 'b.souza@tech.com.br', '1992-07-25', 'BR'),
('Carlos', 'Ferreira', '34567890123', 'carlos.ferreira@web.com', '1978-11-05', 'PT'),
('Daniela', 'Lima', '45678901234', 'daniela.lima@service.com', '2001-01-30', 'BR'),
('Eduardo', 'Santos', '56789012345', 'edu.santos@provider.net', '1995-09-15', 'US'),
('Fernanda', 'Montenegro', '67890123456', 'f.montenegro@cinema.com.br', '1988-05-20', 'BR'),
('Gabriel', 'Costa', '78901234567', 'gabriel.costa@dev.io', '1999-12-10', 'BR'),
('Helena', 'Rocha', '89012345678', 'helena.rocha@consulting.com', '1982-04-03', 'PT'),
('Igor', 'Mendes', '90123456789', 'igor.mendes@logistics.com', '1990-08-22', 'BR'),
('Julia', 'Barbosa', '01234567890', 'julia.barbosa@edu.com.br', '2003-06-14', 'BR'),
('Kevin', 'Oliveira', '11234567891', 'kevin.oliveira@startup.co', '1997-02-28', 'US'),
('Larissa', 'Nunes', '22345678902', 'l.nunes@agency.com', '1994-10-11', 'BR'),
('Maurício', 'Vieira', '33456789013', 'mauricio.v@corporate.com', '1975-12-05', 'BR'),
('Natália', 'Gomes', '44567890124', 'natalia.gomes@health.org', '1991-03-19', 'BR'),
('Otávio', 'Pinto', '55678901235', 'otavio.pinto@finance.com', '1980-07-08', 'BR');


SELECT 
    id AS ID,
    first_name AS Nome,
    last_name AS Sobrenome,
    cpf as CPF,
    email AS Email,
    date_of_birth as Nascimento,
    country as Pais
FROM production.users;

UPDATE production.users
SET email = "kevinOliveiraLTDA@oliveira.co"
WHERE email = "kevin.oliveira@startup.co";


DELETE FROM production.users
WHERE id = 4;
