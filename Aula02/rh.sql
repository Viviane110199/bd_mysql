CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255),
data_nascimento date,
cargo varchar(255),
salario decimal(8,2),
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES ("Camila", "1998-04-10", "Gerente de projetos", "11000.00");

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES ("Rodrigo", "1984-08-15", "Analista de sistemas", "5100.00");

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES ("Debora", "1972-10-28", "Programadora", "6000.00");

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES ("Diogo", "1999-06-11", "Analista de suporte", "1900.00");

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES ("Giovana", "2000-07-20", "Estagiário", "1600.00");

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET cargo = "Analista Jr", salario = 1850.00  WHERE id = 5;