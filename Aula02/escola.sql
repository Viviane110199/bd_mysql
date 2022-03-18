CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255),
data_nascimento date,
ra int,
nota decimal(8,1),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, data_nascimento, ra, nota)
VALUES ("Aline", "2003-04-10", 1463789, 9.0);

INSERT INTO tb_alunos(nome, data_nascimento, ra, nota)
VALUES ("Igor", "2009-01-18", 2876410, 10.0);

INSERT INTO tb_alunos(nome, data_nascimento, ra, nota)
VALUES("Kaue", "2001-03-06", 6258396, 6.0);

INSERT INTO tb_alunos(nome, data_nascimento, ra, nota)
VALUES("Bruna", "1999-03-17", 1125411, 9.0);

INSERT INTO tb_alunos(nome, data_nascimento, ra, nota)
VALUES("Rian", "1999-05-20", 4736222, 9.0);

INSERT INTO tb_alunos(nome, data_nascimento, ra, nota)
VALUES("Karine", "2002-11-25", 6453887, 3.5);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 5.0 WHERE id = 6;