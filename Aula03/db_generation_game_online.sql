CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
descricao varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes (descricao)
VALUES ("Guerreiros");

INSERT INTO tb_classes (descricao)
VALUES ("Assassinos");

INSERT INTO tb_classes (descricao)
VALUES ("Vikings");

INSERT INTO tb_classes (descricao)
VALUES ("Lanceiros");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255),
agilidade int,
inteligencia int,
forca int,
ataque int,
defesa int,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, agilidade, inteligencia, forca, ataque, defesa, classe_id)
VALUES ("Alatar", 1000, 500, 1200, 1000, 800, 3);

INSERT INTO tb_personagens (nome, agilidade, inteligencia, forca, ataque, defesa, classe_id)
VALUES ("Hakan", 900, 1000, 1800, 1000, 2000, 2);

INSERT INTO tb_personagens (nome, agilidade, inteligencia, forca, ataque, defesa, classe_id)
VALUES ("Melina", 2000, 500, 1200, 1000, 500, 4);

INSERT INTO tb_personagens (nome, agilidade, inteligencia, forca, ataque, defesa, classe_id)
VALUES ("Argos", 500, 500, 1200, 2200, 1000, 1);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%n%";

SELECT nome, agilidade, inteligencia, forca, ataque, defesa, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT nome, agilidade, inteligencia, forca, ataque, defesa, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.descricao = "Assassinos";