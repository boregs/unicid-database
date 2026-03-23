CREATE DATABASE aula23_03;
USE aula23_03;

CREATE SCHEMA company;

CREATE TABLE company.employees
(
id int primary key auto_increment,
name varchar(100),
email varchar(100),
department varchar(20),
position varchar(50),
salary double,
bank varchar(15)
);

INSERT INTO company.employees (name, email, department, position, salary, bank) VALUES
('Ana Silva', 'ana.silva@email.com', 'TI', 'Desenvolvedora Backend', 8500.00, 'Itaú'),
('Bruno Santos', 'bruno.santos@email.com', 'Vendas', 'Executivo de Contas', 4200.00, 'Bradesco'),
('Carla Souza', 'carla.souza@email.com', 'RH', 'Analista de Recrutamento', 5100.00, 'Santander'),
('Diego Oliveira', 'diego.oli@email.com', 'Financeiro', 'Controller', 9200.00, 'Nubank'),
('Elena Pires', 'elena.pires@email.com', 'Marketing', 'Social Media', 3800.00, 'Inter'),
('Felipe Costa', 'felipe.c@email.com', 'TI', 'Data Scientist', 10500.00, 'Itaú'),
('Gisele Rocha', 'gisele.r@email.com', 'Jurídico', 'Advogada Senior', 12000.00, 'BB'),
('Hugo Mendes', 'hugo.m@email.com', 'Logística', 'Coordenador', 6300.00, 'Caixa'),
('Isabela Lima', 'isa.lima@email.com', 'TI', 'UX Designer', 7400.00, 'Bradesco'),
('João Pedro', 'jp.ferreira@email.com', 'Vendas', 'Vendedor Junior', 2800.00, 'Santander'),
('Karina Dias', 'karina.dias@email.com', 'Operações', 'Gerente de Planta', 15000.00, 'Itaú'),
('Lucas Neto', 'lucas.neto@email.com', 'TI', 'DevOps Engineer', 9800.00, 'Nubank'),
('Mariana Vaz', 'mari.vaz@email.com', 'RH', 'Gerente de DP', 8800.00, 'BB'),
('Natan Gomes', 'natan.g@email.com', 'Marketing', 'Analista de SEO', 4500.00, 'Inter'),
('Olívia Melo', 'olivia.m@email.com', 'Financeiro', 'Tesoureira', 7200.00, 'Caixa'),
('Paulo Victor', 'pv.silva@email.com', 'Vendas', 'Supervisor', 5900.00, 'Santander'),
('Quiteria Lins', 'quiteria@email.com', 'Jurídico', 'Estagiária', 1800.00, 'Bradesco'),
('Rafael Amaral', 'rafa.amaral@email.com', 'TI', 'Arquiteto Cloud', 14500.00, 'Itaú'),
('Sara Antunes', 'sara.a@email.com', 'Operações', 'Analista de Qualidade', 5300.00, 'Nubank'),
('Tiago Luz', 'tiago.luz@email.com', 'Marketing', 'Diretor de Arte', 9000.00, 'Inter');

-- "Me diga quantas vezes o departamento X aparece na tabela"
select department, COUNT(*) 
from company.employees
group by department
-- basicamente falando: "mostrando aqueles que aparecem mais que duas vezes"
having count(*) > 2;



