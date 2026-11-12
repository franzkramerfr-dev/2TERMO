-- Active: 1788519228847@@127.0.0.1@3306@retrogame_recuperacao_franz
-- CRIANDO BANCO DE DADOS
CREATE DATABASE IF NOT EXISTS retrogame_recuperacao_franz;

-- ATIVANDO BANCO DE DADOS
USE retrogame_recuperacao_franz;

-- 2. Tabela CLIENTE
-- Crie os campos especificados e garanta obrigatoriedade, e-mail exclusivo e ativo por padrão.


CREATE TABLE IF NOT EXISTS CLIENTE (
    ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(120) NOT NULL UNIQUE,
    TELEFONE VARCHAR(20) NULL,
    ATIVO BOOLEAN DEFAULT TRUE
);


-- 3. PLATAFORMA e CATEGORIA
-- Crie as duas tabelas auxiliares com suas chaves e valores exclusivos. Essas tabelas serão referenciadas por JOGO.

CREATE TABLE IF NOT EXISTS PLATAFORMA (
    ID_PLATAFORMA INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS CATEGORIA (
    ID_CATEGORIA INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(80) NOT NULL UNIQUE
);



-- 4. Tabela JOGO
-- Crie a tabela com PK, código exclusivo, estoque não negativo e FKs para PLATAFORMA e CATEGORIA.

CREATE TABLE IF NOT EXISTS JOGO (
    ID_JOGO INT AUTO_INCREMENT,
    TITULO VARCHAR(150) NOT NULL,
    CODIGO VARCHAR (15) NOT NULL UNIQUE,
    ANO_LANCAMENTO INT NOT NULL,
    QUANTIDADE_DISPONIVEL INT DEFAULT 0 CHECK (QUANTIDADE_DISPONIVEL >= 0),
    ID_PLATAFORMA INT NOT NULL,
    ID_CATEGORIA INT NOT NULL,
    CONSTRAINT ID_JOGO_PK PRIMARY KEY (ID_JOGO),
    CONSTRAINT FK_PLATAFORMA FOREIGN KEY (ID_PLATAFORMA) REFERENCES PLATAFORMA(ID_PLATAFORMA),
    CONSTRAINT FK_CATEGORIA FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIA(ID_CATEGORIA)
);






-- 5. Tabela LOCACAO
-- Crie PK, FKs obrigatórias, DEFAULTs e CHECK do status. Preserve os históricos contra exclusões.

CREATE TABLE IF NOT EXISTS LOCACAO (
    ID_LOCACAO INT PRIMARY KEY AUTO_INCREMENT,
    DATA_RETIRADA DATETIME DEFAULT CURRENT_TIMESTAMP,
    DATA_PREVISTA DATE NOT NULL,
    DATA_DEVOLUCAO DATE NULL,
    STATUS_LOCACAO VARCHAR(20) DEFAULT 'ABERTA' CHECK (STATUS_LOCACAO IN ('ABERTA', 'DEVOLVIDA', 'ATRASADA')),
    ID_CLIENTE INT NOT NULL,
    ID_JOGO INT NOT NULL,
    CONSTRAINT FK_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
    CONSTRAINT FK_JOGO FOREIGN KEY (ID_JOGO) REFERENCES JOGO(ID_JOGO)
);





-- 6. ALTER TABLE
-- Acrescente desenvolvedora VARCHAR(500) à tabela JOGO usando ALTER TABLE.

ALTER TABLE JOGO ADD DESENVOLVEDORA VARCHAR(100)


-- 5. Fase 2- DML: manipulação de dados (25 pontos)

-- 7. Inserir clientes
-- Insira pelo menos 4 clientes. Um deles deve ter telefone NULL.

INSERT INTO CLIENTE (NOME, EMAIL, TELEFONE, ATIVO) VALUES
('Franz Kramer', 'franz@gmail.com', NULL, DEFAULT),
('Davi Ferreira', 'davi@gmail.com', '199999999', DEFAULT),
('Gabrielli Araujo', 'gabi@gmail.com', '199999998', DEFAULT),
('Gabriel Travaglini', 'gabriel@gmail.com', '199999997', DEFAULT);


-- 8. Inserir plataformas, categorias e jogos
-- Insira ao menos 2 plataformas, 2 categorias e 6 jogos, com códigos, anos e estoques diferentes, respeitando as FKs.

SELECT * FROM PLATAFORMA

INSERT INTO PLATAFORMA (NOME) VALUES
('XBOX'),
('PLAYSTATION');

INSERT INTO CATEGORIA (NOME) VALUES
('AÇÃO'),
('AVENTURA');

INSERT INTO JOGO (TITULO, CODIGO, ANO_LANCAMENTO, QUANTIDADE_DISPONIVEL, ID_PLATAFORMA, ID_CATEGORIA, DESENVOLVEDORA) VALUES
('Halo Infinite', 'HALO2021', 2021, 10, 1, 1, '343 Industries'),
('God of War', 'GOW2018', 2018, 5, 2, 1, 'Santa Monica Studio'),
('Forza Horizon', 'FORZA2021', 2021, 8, 2, 1, 'Playground Games'),
('Uncharted', 'UNCHARTED2016', 2016, 3, 1, 1, 'Naughty Dog'),
('FIFA 22', 'FIFA2022', 2022, 15, 1, 1, 'EA Sports'),
('The Last of Us Part II', 'TLOU2020', 2020, 4, 1, 1, 'Naughty Dog');

SELECT * FROM PLATAFORMA;

SELECT * FROM CATEGORIA;

9. Inserir locações
Insira ao menos 3 locações ABERTAS de clientes e jogos existentes; planeje a redução de estoque correspondente.

INSERT INTO LOCACAO (DATA_RETIRADA, DATA_PREVISTA, DATA_DEVOLUCAO, STATUS_LOCACAO, ID_CLIENTE, ID_JOGO) VALUES
('2024-07-01', '2024-07-08', NULL, 'ABERTA', 1, 25),
('2024-07-02', '2024-07-09', NULL, 'ABERTA', 2, 26),
('2024-07-03', '2024-07-10', NULL, 'ABERTA', 3, 27);

SELECT * FROM LOCACAO;

SELECT * FROM CLIENTE;

SELECT * FROM JOGO;


10. SELECT + UPDATE
Localize um cliente com SELECT e modifique seu telefone com UPDATE e WHERE.

SELECT * FROM CLIENTE
WHERE ID_CLIENTE = 1;

UPDATE CLIENTE SET TELEFONE = '1999991099' WHERE ID_CLIENTE = 1;


11. UPDATE em lote
Acrescente 2 unidades ao estoque de cada jogo lancado a partir do ano 2000. Use condiçao adequada.

UPDATE JOGO SET QUANTIDADE_DISPONIVEL = QUANTIDADE_DISPONIVEL + 2 WHERE ANO_LANCAMENTO >= 2000;

12. DELETE e proteção do histórico
Crie e exclua um cliente sem locações. Tente excluir um cliente com locação e registre o resultado e a justificativa técnica.

SELECT * FROM CLIENTE;
INSERT INTO CLIENTE (NOME, EMAIL, TELEFONE, ATIVO) VALUES
('Cliente Teste', 'cliente@teste.com', '199999999', DEFAULT);

DELETE FROM CLIENTE WHERE ID_CLIENTE = 5;

DELETE FROM CLIENTE WHERE ID_CLIENTE = 1;

-- O cliente com ID_CLIENTE = 1 não pôde ser excluído porque possui locações associadas na tabela LOCACAO. Excluir um cliente com locações ativas não é permitido para garantir o armazenamento dos dados.

6. Fase 3 -DQL: consultas e análise (30 pontos)

13. SELECT basico
Liste titulo, ano de lançamento e quantidade disponivel de todos os jogos.

SELECT TITULO, ANO_LANCAMENTO, QUANTIDADE_DISPONIVEL FROM JOGO;

14. WHERE + ORDER BY
Mostre jogos com estoque maior que 2, do maior para o menor estoque.

SELECT TITULO, ANO_LANCAMENTO, QUANTIDADE_DISPONIVEL FROM JOGO WHERE QUANTIDADE_DISPONIVEL > 2 ORDER BY QUANTIDADE_DISPONIVEL DESC;

15. LIKE
Pesquise jogos cujo título contenha uma palavra escolhida por você.

SELECT TITULO from JOGO WHERE TITULO LIKE "%GOD%";

16. BETWEEN
Liste os jogos com ano de lançamento entre 1990 e 2005.

SELECT TITULO, ANO_LANCAMENTO FROM JOGO WHERE ANO_LANCAMENTO BETWEEN 2016 AND 2021;

SELECT * FROM JOGO;

-- 17. Funçoes agregadas
-- Apresente COUNT, SUM, AVG, MIN e MAX sobre os estoques dos jogos, com aliases claros.

-- COUNT
SELECT COUNT(*) AS QUANTIDADE_DISPONIVEL FROM JOGO;

-- SUM

SELECT SUM(QUANTIDADE_DISPONIVEL) AS TOTAL_DISPONIVEL
FROM JOGO
WHERE
    QUANTIDADE_DISPONIVEL

-- AVG

SELECT ROUND(AVG(QUANTIDADE_DISPONIVEL), 2) AS QUANTIDADE_MEDIA_DISPONIVEL FROM JOGO;

-- MIN
SELECT
    MIN(QUANTIDADE_DISPONIVEL) AS QUANTIDADE_MINIMA_DISPONIVEL
FROM JOGOS;

-- MAX 

SELECT
    MAX(QUANTIDADE_DISPONIVEL) AS QUANTIDADE_MAXIMA_DISPONIVEL
FROM JOGO;

18. INNER JOIN
Liste ID da locação, nome do cliente, titulo do jogo, data de retirada e status.


SELECT L.ID_LOCACAO, C.NOME AS CLIENTE, J.TITULO AS TITULO_JOGO, J.ANO_LANCAMENTO AS DATA, L.STATUS_LOCACAO AS STATUS
FROM LOCACAO AS L
INNER JOIN CLIENTE AS C
    ON L.ID_CLIENTE = C.ID_CLIENTE
INNER JOIN JOGO AS J
    ON L.ID_JOGO = J.ID_JOGO;


19. JOIN + WHERE
Exiba apenas locações com status ABERTA.

SELECT L.ID_LOCACAO, C.NOME AS CLIENTE, J.TITULO AS TITULO_JOGO, J.ANO_LANCAMENTO AS DATA, L.STATUS_LOCACAO AS STATUS
FROM LOCACAO AS L
INNER JOIN CLIENTE AS C
    ON L.ID_CLIENTE  = C.ID_CLIENTE
INNER JOIN JOGO AS J
    ON L.ID_JOGO = J.ID_JOGO
WHERE STATUS_LOCACAO = 'ABERTO';

20. GROUP BY
Mostre cada cliente que possui locações e a respectiva quantidade, em ordem decrescente.

SELECT C.NOME AS CLIENTE, COUNT(L.ID_LOCACAO) AS QUANTIDADE_LOCACOES
FROM LOCACAO AS L
INNER JOIN CLIENTE AS C
    ON L.ID_CLIENTE = C.ID_CLIENTE
GROUP BY C.NOME
ORDER BY QUANTIDADE_LOCACOES DESC;

21. LEFT JOIN
Mostre todos os clientes, inclusive os que nunca locaram, e a quantidade de locações de cada um.

SELECT C.NOME AS CLIENTE, COUNT(L.ID_LOCACAO) AS QUANTIDADE_LOCACOES
FROM CLIENTE AS C
LEFT JOIN LOCACAO AS L
    ON C.ID_CLIENTE = L.ID_CLIENTE
GROUP BY C.NOME
ORDER BY QUANTIDADE_LOCACOES DESC;



22. Transação de locação
Em uma transação, cadastre nova locação, reduza o estoque em 1 com condição de estoque positivo, faça SELECT para conferir e finalize com COMMIT.
Identifique como evitar registrar locação sem unidade disponivel.

START TRANSACTION;

INSERT INTO LOCACAO (DATA_RETIRADA, DATA_PREVISTA, DATA_DEVOLUCAO, STATUS_LOCACAO, ID_CLIENTE, ID_JOGO) VALUES
('2024-07-04', '2024-07-11', NULL, 'ABERTA', 4, 28);

SELECT * FROM locacao;

COMMIT;

-- É possivel evitar registrar locação sem unidade disponível utilizando uma condição no INSERT ou verificando o estoque antes de realizar a operação. Ex: Só vai ser possivel se quantidades disponiveis for maior que 0.

23. ROLLBACK
Inicie transação; altere propositalmente o estoque de um jogo; consulte antes e depois; faça ROLLBACK e comprove o retorno ao valor original.

START TRANSACTION;


SELECT * FROM JOGO WHERE ID_JOGO = 25;
UPDATE JOGO SET QUANTIDADE_DISPONIVEL = QUANTIDADE_DISPONIVEL - 1 WHERE ID_JOGO = 25;
SELECT * FROM JOGO WHERE ID_JOGO = 25;

ROLLBACK;

SELECT QUANTIDADE_DISPONIVEL FROM JOGO WHERE ID_JOGO = 25


24. SAVEPOINT
Altere estoques de dois jogos dentro de uma transação. Após a primeira alteração, crie

START TRANSACTION;


UPDATE JOGO SET QUANTIDADE_DISPONIVEL = QUANTIDADE_DISPONIVEL + 5 WHERE ID_JOGO = 1;


SAVEPOINT primeira_alteracao;


UPDATE JOGO SET QUANTIDADE_DISPONIVEL = QUANTIDADE_DISPONIVEL + 10 WHERE ID_JOGO = 2;


ROLLBACK TO SAVEPOINT primeira_alteracao;


COMMIT;


SELECT ID_JOGO, QUANTIDADE_DISPONIVEL FROM JOGO WHERE ID_JOGO IN (1, 2);

 
25. Transação de devolução
Encontre locação ABERTA, atualize status para DEVOLVIDA e a data, devolva uma unidade ao estoque e finalize com COMMIT.

START TRANSACTION;

SELECT * FROM locacao

SELECT * FROM locacao WHERE STATUS_LOCACAO  = 'ABERTA';


UPDATE LOCACAO
SET
    STATUS_LOCACAO = 'DEVOLVIDA',
    DATA_DEVOLUCAO = CURRENT_DATE
WHERE
    ID_LOCACAO = 4
    AND STATUS_LOCACAO = 'ABERTA';

UPDATE JOGO SET QUANTIDADE_DISPONIVEL = QUANTIDADE_DISPONIVEL + 1 WHERE ID_JOGO = 1;



UPDATE JOGO SET QUANTIDADE_DISPONIVEL = QUANTIDADE_DISPONIVEL + 1 WHERE ID_JOGO = 1;


COMMIT;


SELECT * FROM LOCACAO WHERE ID_LOCACAO = 1;

SELECT * FROM JOGO WHERE ID_JOGO = 1;

8. Análise técnica (obrigatória, considerada dentro dos critérios)

Em comentários SQL, explique qual recurso evita: (a) e-mail repetido; (b) código de jogo repetido; (c) estoque negativo; (d) locação de cliente inexistente (e) exclusão de jogo com histórico; (f) locação gravada sem baixa de estoque; (g) locação quando não há unidades disponiveis. Diferencie restrições do banco,
transações e validações da aplicação.

-- A) UNIQUE evita e-mail repetido pois não pode ser duplicado e sim único.

-- B) UNIQUE evita código de jogo repetido pois não pode ser duplicado e sim único.

-- C) CHECK evita estoque negativo pois não permite valores menores que 0.

-- D) FOREIGN KEY evita locação de cliente inexistente pois não permite inserir um ID_CLIENTE que não exista na tabela CLIENTE.

-- E) FOREIGN KEY evita exclusão de jogo com histórico pois não permite excluir um ID_JOGO que esteja referenciado na tabela LOCACAO.

-- F)  A transação de locação com verificação de estoque evita locação sem baixa de estoque, pois só permite a locação se o estoque for maior que 0 e reduz o estoque em 1 no momento da locação.

-- G) A transação de locação com verificação de estoque evita locação quando não há unidades disponíveis, pois só permite a locação se o estoque for maior que 0.