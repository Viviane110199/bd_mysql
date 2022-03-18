CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
tipo varchar(255),
tecido varchar(255),
tamanho varchar(255),
preco decimal(8,2),
quantidade int,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(tipo, tecido, tamanho, preco, quantidade)
VALUES ("vestido", "malha", "M", "30.00", 300);

INSERT INTO tb_produtos(tipo, tecido, tamanho, preco, quantidade)
VALUES ("short", "tactel", "G", "25.00", 400);

INSERT INTO tb_produtos(tipo, tecido, tamanho, preco, quantidade)
VALUES("casaco", "lã", "PP", "32.00", 200);

INSERT INTO tb_produtos(tipo, tecido, tamanho, preco, quantidade)
VALUES("jaqueta", "couro", "P", "50.00", 500);

INSERT INTO tb_produtos(tipo, tecido, tamanho, preco, quantidade)
VALUES("calça", "jeans", "38", "60.00", 600);

INSERT INTO tb_produtos(tipo, tecido, tamanho, preco, quantidade)
VALUES("macacão", "poliester", "G", "65.00", 300);

INSERT INTO tb_produtos(tipo, tecido, tamanho, preco, quantidade)
VALUES("camiseta", "algodão", "M", "20.00", 650);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE quantidade > 500;
SELECT * FROM tb_produtos WHERE quantidade < 500;

UPDATE tb_produtos SET quantidade = 550 WHERE id = 2;