CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
categoria varchar(255),
preco decimal(8,2),
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (categoria, preco)
VALUES ("Tradicional", "28.00");

INSERT INTO tb_categoria (categoria, preco)
VALUES ("Especial", "35.00");

INSERT INTO tb_categoria (categoria, preco)
VALUES ("Combo (pizza + coca)", "46.00");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
tipo varchar(255),
sabor varchar(255),
borda varchar(255),
pzz_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (pzz_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza (tipo, sabor, borda, pzz_id)
VALUES ("Salgada", "Fiorella", "Normal", 2);

INSERT INTO tb_pizza (tipo, sabor, borda, pzz_id)
VALUES ("Doce", "Nutella", "Normal", 1);

INSERT INTO tb_pizza (tipo, sabor, borda, pzz_id)
VALUES ("Salgada", "Quatro Queijos", "Recheada", 2);

INSERT INTO tb_pizza(tipo, sabor, borda, pzz_id)
VALUES ("Doce", "Sensação", "Normal", 3);

INSERT INTO tb_pizza(tipo, sabor, borda, pzz_id)
VALUES ("Salgada", "Calabresa", "Recheada", 1);

SELECT * FROM tb_pizza;

SELECT * FROM tb_categoria WHERE preco > 45.00;
SELECT * FROM tb_categoria WHERE preco BETWEEN 29.00 AND 60.00;
SELECT * FROM tb_pizza WHERE sabor LIKE "%c%";

SELECT tipo, sabor, borda, tb_categoria.categoria, tb_categoria.preco
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.pzz_id = tb_categoria.id;

SELECT tipo, sabor, borda, tb_categoria.categoria, tb_categoria.preco
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.pzz_id = tb_categoria.id
WHERE tb_pizza.tipo = "Doce";