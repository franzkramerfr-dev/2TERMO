-- Active: 1788519228847@@127.0.0.1@3306@smartcoffe_franz02
DROP DATABASE IF EXISTS SMARTCOFFE_FRANZ01;

CREATE DATABASE IF NOT EXISTS SMARTCOFFE_FRANZ02;

USE SMARTCOFFE_FRANZ02;

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    telefone VARCHAR(15),
    cidade VARCHAR(60) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE
);

create table categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE
);

create table IF NOT EXISTS produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    id_categoria INT NOT NULL,
    constraint fk_produto_categoria FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria)
);

create table if not exists pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATETIME NOT NULL,
    status_pedido ENUM ('ABERTO', 'PREPARANDO', 'FINALIZADO', 'CANCELADO') NOT NULL,
    valor_total DECIMAL (10,2) NOT NULL DEFAULT 0.00,
    id_cliente INT NOT NULL,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

CREATE TABLE if not exists item_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    observacao VARCHAR(150),
    CONSTRAINT fk_item_pedido FOREIGN KEY (id_pedido) REFERENCES pedido
    (id_pedido),
    CONSTRAINT fk_item_produto FOREIGN KEY (id_produto) REFERENCES produto
    (id_produto)
);



CREATE TABLE if not exists forma_pagamento (
    id_forma_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(40) NOT NULL UNIQUE
);


CREATE TABLE if not exists pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_forma_pagamento INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_pagamento DATETIME,
    CONSTRAINT fk_pagamento_pedido FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
    CONSTRAINT fk_pagamento_forma_pagamento FOREIGN KEY (id_forma_pagamento) REFERENCES forma_pagamento (id_forma_pagamento)
);






-- INSERINDO DADOS NO BD
INSERT INTO cliente (nome, email, telefone, cidade, ativo) VALUES
('Arthur Nunes', 'arthur@email.com', 1999999901, 'São Paulo', TRUE),
('Beatriz Raissa', 'beatriz@email.com', 1999999902, 'Rio de Janeiro', TRUE),
('Dandara Dias', 'dandara@email.com', 1999999903, 'Belo Horizonte', TRUE),
('Davi Ferreira', 'davi@email.com', NULL, 'Belo Horizonte', TRUE),
('Francisco Magri', 'francisco@email.com', 1999999904, 'Belo Horizonte', TRUE),
('Felipe Rodrigues', 'felipe@email.com', NULL, 'Belo Horizonte', TRUE),
('Franz Kramer', 'franz@email.com', 1999999906, 'Belo Horizonte', TRUE),
('Gabriel Nogeuira', 'gabriel@email.com', 1999999907, 'Americana', TRUE),
('Gabrielli Araujo', 'gabrielli@email.com', 1999999908, 'Belo Horizonte', TRUE),
('Isabella Alves', 'isabella@email.com', NULL, 'Belo Horizonte', TRUE),
('Keynan', 'keynan@email.com', 1999999909, 'Belo Horizonte', TRUE),
('Larissa Ramires', 'larissa@email.com', 1999999910, 'Belo Horizonte', TRUE),
('Leonardo Dias', 'leonardo@email.com', 1999999911, 'Valinhos', TRUE),
('Luana Prado', 'luana@email.com', 1999999912, 'Belo Horizonte', TRUE),
('Luccas Manfredi', 'luccas@email.com', 1999999913, 'Campinas', TRUE),
('Livia Stein' , 'livia@email.com', NULL, 'Limeira', TRUE);



INSERT INTO categoria (nome) VALUES
('sobremesas')
('cafes'),
('salgados'),
('bebidas'),
('doces');

INSERT INTO categoria (nome) VALUES
('Bebidas Geladas');

INSERT INTO produto (nome, preco, ativo, id_categoria) VALUES
('Capuccino', '10.99', TRUE , 1),
('Coxinha', '8.99', TRUE, 2),
('Suco', '12.99', TRUE, 3 ),
('Bolo', '9.90', TRUE, 4),
('Milk-Shake', '26.99', TRUE, 5);


INSERT INTO pedido (data_pedido, status_pedido, valor_total, id_cliente) VALUES
(now(), 'ABERTO', 0.00 , 2),
(now(), 'PREPARANDO', 19.99, 3),
(now(), 'CANCELADO', 12.00, 6 ),
(now(), 'ABERTO', 10.00, 9),
(now(), 'PREPARANDO', 0.00, 10);

INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario, observacao) VALUES
(11, 1, 12, 10.99, 'Bem quente'),
(12, 2, 3, 8.99, 'Sem cebola' ),
(13, 3, 1, 12.99, 'Com Gelo'),
(14, 4, 2, 9.90, 'Com Morango'),
(15, 5, 1, 26.99, 'Bem gelado');


INSERT INTO forma_pagamento (descricao) VALUES 
('Cartão de Crédito'),
('Cartão de Débito'),
('Pix'),
('Boleto Bancário'),
('Dinheiro');

INSERT INTO pagamento (id_pedido, id_forma_pagamento, valor, data_pagamento) VALUES
(11, 1, 0.00, now() ),
(12, 2, 0.00, now() ),
(13, 3, 0.00, now() ),
(14, 4, 0.00, now() ),
(15, 5, 0.00, now() );


-- ATRIBUIR NOMES AO ID

INSERT INTO categoria (nome) VALUES
('Especiais da House');

SET @categoria_novas = (SELECT nome FROM categoria WHERE nome = 'Combos Extras');

SELECT @categoria_novas


-- ATUALIZANDO OU MODIFICANDO DADOS NO BD
-- LEMBRAR DE SEMPRE EXECUTAR O SELECT PARA ATUALIZAR (UPDATE)
-- E NUNCA JAMAIS NEVER FACA UM UPDATE SEM O WHERE
-- EX: 1 MODIFICANDO VALORES INDIVIDUAIS
UPDATE cliente 
SET telefone = '199999999057'
WHERE id_cliente = 10




UPDATE cliente
SET telefone = '1999999999999'

-- EX: 2 MODIFICANDO VARIOS VALORES

UPDATE cliente
SET telefone = '1999999948',
    cidade = 'Piracicaba'

WHERE id_cliente = 10;

-- APAGAR DADOS DA TABELA NO BD

DELETE FROM cliente
WHERE id_cliente = 9;
SELECT * FROM categoria;

SELECT * FROM forma_pagamento

-- PROCEDIMENTO DE UMA COMPRA
-- PASSO 1: REALIZAR CADASTRO CLIENTE

INSERT INTO cliente (nome,email,telefone,cidade,ativo)VALUES 
('Carlos Silva','carlos.silva4@email.com','19999999999','Santos', TRUE);

SET @cliente_compra = LAST_INSERT_ID();

-- PASSO 2: REALIZAR PEDIDO
INSERT INTO pedido (data_pedido,status_pedido,valor_total,id_cliente) VALUES 
(NOW(),'ABERTO',0.00,@cliente_compra);

SET @pedido_compra = LAST_INSERT_ID();

-- PASSO 3: INSERINDO ITENS

INSERT into item_pedido (id_pedido,id_produto,quantidade,preco_unitario) VALUES 
(@pedido_compra, 1, 1, 13.00),(@pedido_compra, 2, 2, 9.00);

-- PASSO 4 - ATUALIZANDO TOTAL E STATUS

UPDATE pedido
SET valor_total = 22.00,
    status_pedido = 'PREPARANDO'
WHERE id_pedido = @pedido_compra;

-- PASSO 5 - REGISTRAR PAGAMENTO

INSERT INTO pagamento (id_pedido, id_forma_pagamento, valor,data_pagamento) VALUES
(@pedido_compra,2,22.00,NOW());


-- PASSO 6 - CONSULTAR PEDIDO E RESULTADO


SELECT p.id_pedido,
    c.nome AS Nome_Cliente,
    p.status_pedido AS Status_Pedido,
    p.valor_total AS Compra_Total
FROM pedido p
JOIN cliente c ON c.id_cliente = p.id_cliente
WHERE p.id_pedido = @pedido_compra;




-- TRANSAÇÕES - SEGURANÇA PARA DML
START TRANSACTION;


UPDATE produto
SET preco = preco + 2.80
WHERE id_categoria = 1;


SELECT id_produto, nome, preco
FROM produto
WHERE id_categoria = 1;
-- DESFAZ O QUE FIZEMOS ERRADO OU VOLTA UMA TRANSAÇÃO
ROLLBACK;
-- VALIDA O PROCEDIMENTO DE TRANSAÇÃO
COMMIT;

START TRANSACTION;

UPDATE cliente SET cidade = 'Santos' WHERE id_cliente = 121;

SELECT * FROM cliente WHERE id_cliente = 121;

COMMIT;

ROLLBACK;
































SELECT @categoria = LAST_INSERT_ID();
SELECT @categoria;

-------------------------------------------------------------------------------

--CONSULTAR DADOS NO BD

select * from cliente
WHERE id_cliente = 10

select * from categoria