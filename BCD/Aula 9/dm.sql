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
)

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










































SELECT @categoria = LAST_INSERT_ID();
SELECT @categoria;

-------------------------------------------------------------------------------

--CONSULTAR DADOS NO BD

select * from cliente
WHERE id_cliente = 10

select * from categoria