select @@version;
-- Criar banco de dados
CREATE DATABASE db_quitanda;

-- Selecionar o banco de dados
USE db_quitanda;

-- Criar tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255),
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("chuchu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 80, "2023-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("cenoura", 30, "2023-03-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("morango", 1, "2023-03-20", 8.50);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("banana", 1000, "2023-03-20", 10.50);

-- Listar todos os produtos
SELECT * FROM tb_produtos;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

-- Atualizar os dados da tabela
UPDATE tb_produtos SET preco = 8.50 WHERE id = 5;

-- Deletar produto
DELETE FROM tb_produtos WHERE id = 3;

/* Alterações na Estrutura da tabela */
ALTER TABLE tb_produtos  MODIFY preco decimal(8,2);

/* Criar mais atributos da tabela */
ALTER TABLE tb_produtos ADD descricao varchar(255);

/* Excluir o atribuito da tabela */
ALTER TABLE tb_produtos DROP descricao;