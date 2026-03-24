create database biblioteca;
use biblioteca;

create table livros
(
id int primary key auto_increment,
title varchar(50),
author varchar(20),
writing_date date,
aquiring_date date
);

INSERT INTO livros (title, author, writing_date, aquiring_date) VALUES
('Dom Casmurro', 'Machado de Assis', '1899-12-31', '2023-01-15'),
('O Alquimista', 'Paulo Coelho', '1988-05-15', '2023-02-10'),
('1984', 'George Orwell', '1949-06-08', '2023-03-05'),
('O Cortiço', 'Aluísio Azevedo', '1890-01-01', '2023-04-20'),
('A Metamorfose', 'Franz Kafka', '1915-10-01', '2023-05-12'),
('Hamlet', 'W. Shakespeare', '1603-01-01', '2023-06-18'),
('O Pequeno Principe', 'A. Saint-Exupéry', '1943-04-06', '2023-07-22'),
('Iracema', 'José de Alencar', '1865-01-01', '2023-08-30'),
('Ensaio Cegueira', 'José Saramago', '1995-10-15', '2023-09-14'),
('Vidas Secas', 'Graciliano Ramos', '1938-03-20', '2023-10-05');

select title, author, aquiring_date
from livros
where aquiring_date > '2023-06-05';

update livros
set title = "Dom Casmurro (Deluxe Edition)"
where id = 1;

delete from livros
where id = 2;

select * from livros;