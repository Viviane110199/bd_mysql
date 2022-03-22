CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
marca varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (marca)
VALUES ("EMS");

INSERT INTO tb_categoria (marca)
VALUES ("Sanofi");

INSERT INTO tb_categoria (marca)
VALUES ("Neo Química");

INSERT INTO tb_categoria (marca)
VALUES ("Aché");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT,
nome varchar(255),
tipo varchar(255),
preco decimal(8,2),
produtos_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (produtos_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, tipo, preco, produtos_id)
VALUES ("Dorflex", "analgésico", 10.00, 2);

INSERT INTO tb_produto (nome, tipo, preco, produtos_id)
VALUES ("Amoxicilina", "antibiótico", 58.00, 4);

INSERT INTO tb_produto (nome, tipo, preco, produtos_id)
VALUES ("Nimesulida", "antiinflamatório", 16.00, 3);

INSERT INTO tb_produto (nome, tipo, preco, produtos_id)
VALUES ("Dipirona", "analgésico", 5.00, 1);

INSERT INTO tb_produto (nome, tipo, preco, produtos_id)
VALUES ("Azitromicina", "antibiótico", 37.00, 1);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.00;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_produto WHERE nome LIKE "%m%";

SELECT nome, tipo, preco, tb_categoria.marca
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.produtos_id = tb_categoria.id;

SELECT nome, tipo, preco, tb_categoria.marca
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.produtos_id = tb_categoria.id
WHERE tb_produto.tipo = "antibiótico";