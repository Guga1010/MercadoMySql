-- CREATE DATABASE mercado;
-- USE mercado;

-- CREATE TABLE produtos(
-- 	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
-- 	nome VARCHAR(100),
--     preco INT,
--     datavencimento DATE
-- )
-- CREATE TABLE fornecedor(
-- 	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
-- 	nome VARCHAR(50),
--     endereco VARCHAR(250),
--     dataentrega DATE,
--     produto_id INT NOT NULL,
--     FOREIGN KEY (produto_id) REFERENCES produtos(id)
-- )

-- INSERT INTO produtos(nome,preco,datavencimento) VALUES ('queijo ralado',5,'2023-05-01');
-- INSERT INTO produtos(nome,preco,datavencimento) VALUES ('bolacha recheada',10,'2021-08-12');
-- INSERT INTO produtos(nome,preco,datavencimento) VALUES ('suco',10,'2024-12-25');
-- INSERT INTO produtos(nome,preco,datavencimento) VALUES ('papel toalha',7,'2020-06-03');
-- INSERT INTO produtos(nome,preco,datavencimento) VALUES ('sorvete',30,'2030-04-17');
-- INSERT INTO fornecedor(nome, endereco, dataentrega, produto_id) VALUES ('Marcio','Rua Maçã do Uruguai','2023-05-12',2);
-- INSERT INTO fornecedor(nome, endereco, dataentrega, produto_id) VALUES ('Paula','Avenida Parana Rosa','2023-02-01',1);
-- INSERT INTO fornecedor(nome, endereco, dataentrega, produto_id) VALUES ('Ana','Rua Ventos Amarelos','2023-12-24',3);
-- INSERT INTO fornecedor(nome, endereco, dataentrega, produto_id) VALUES ('Pablo','Rua Frio Gelado','2023-12-24',3);
-- INSERT INTO fornecedor(nome, endereco, dataentrega, produto_id) VALUES ('Claudia','Rua Teste Opera','2023-12-24',4);

-- SELECT * FROM fornecedor;

-- SELECT produtos.nome, produtos.datavencimento, fornecedor.dataentrega, fornecedor.id FROM produtos JOIN fornecedor ON produtos.id = fornecedor.produto_id;
-- SELECT produtos.nome, fornecedor.* FROM produtos RIGHT JOIN fornecedor ON produtos.id = fornecedor.produto_id;

-- UPDATE fornecedor SET produto_id = 1  WHERE produto_id = 2;
-- UPDATE fornecedor SET produto_id = 2  WHERE id = 2;
-- UPDATE fornecedor SET dataentrega = '2023-02-10' WHERE id = 1;
-- UPDATE fornecedor SET dataentrega = '2021-06-01' WHERE id = 2;

-- SELECT SUM(produto_id) FROM fornecedor;
-- SELECT COUNT(produto_id) AS qtd_id_2 FROM fornecedor WHERE produto_id = 3;

-- SELECT dataentrega, COUNT(*) AS qtd_entrega FROM fornecedor
-- GROUP BY dataentrega;

-- SELECT CONCAT("O nome do produto é: ", nome, " e a data de vencimento é: ",datavencimento)
-- FROM produtos;

SELECT YEAR(datavencimento) AS ano_vencimento FROM produtos;
