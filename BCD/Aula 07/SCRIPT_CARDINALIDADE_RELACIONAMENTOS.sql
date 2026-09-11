-- Active: 1788519228847@@127.0.0.1@3306@sesi_cr_ta

-- Sql ANSI 2003 - brModelo.
-- Relacionamentos de cardinalidade - B
Banco de dados exemplo:

CREATE DATABASE IF NOT EXISTS SESI_CR_TA;

USE SESI_CR_TA;
CREATE TABLE Cliente (
ID_cliente int Auto_increment Primary Key PRIMARY KEY,
Nome_cliente varchar(60)
)

CREATE TABLE Pedido (
ID_pedido int Auto_increment Primary Key PRIMARY KEY,
Data_pedido datetime not null,
ID_cliente int NOT NULL,
FOREIGN KEY(ID_cliente) REFERENCES Cliente (ID_cliente)
)

CREATE TABLE Estoque (
ID_produto INT NOT NULL UNIQUE,
Nome_produto VARCHAR(60),
ID_estoque INT AUTO_INCREMENT PRIMARY KEY ,
Quantidade INT
-- PRIMARY KEY(ID_produto,ID_estoque)
)

CREATE TABLE Fornecedor (
ID_fornecedor INT AUTO_INCREMENT PRIMARY KEY PRIMARY KEY,
Razao_social VARCHAR(60)
)

CREATE TABLE Produto (
ID_produto INT AUTO_INCREMENT PRIMARY KEY PRIMARY KEY,
Nome_produto VARCHAR(60)
)

CREATE TABLE Item_produto (
ID_produto INT NOT NULL,
ID_fornecedor INT NOT NULL,
ID_item INT AUTO_INCREMENT PRIMARY KEY PRIMARY KEY,
Valor DECIMAL(7,2),
Observacao TEXT(300),
FOREIGN KEY(ID_produto) REFERENCES Produto (ID_produto),
FOREIGN KEY(ID_fornecedor) REFERENCES Fornecedor (ID_fornecedor)
)

