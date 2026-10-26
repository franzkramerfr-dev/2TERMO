-- Active: 1788519228847@@127.0.0.1@3306@smartcoffe_franz02
-- ============================================================
-- AULA 09 - ATIVIDADE PRÁTICA DE DQL
-- Nome: Franz Kramer da Silva
-- Turma: 2DEVIS Data: 09/10/2026
-- Base: smartcoffee_dql
-- ============================================================
USE smartcoffee_franz02;

-- PARTE A - AQUECIMENTO

-- 1. Liste todos os clientes cadastrados.
SELECT * from cliente

-- 2. Exiba apenas nome, cidade e e-mail dos clientes.
SELECT nome, cidade, cidade, email from cliente

-- 3. Liste os nomes das cidades sem repetir valores.

SELECT DISTINCT cidade FROM cliente;

-- 4. Liste todos os produtos em ordem crescente de preço.

SELECT nome, preco FROM produto ORDER BY preco ASC;

-- 5. Mostre apenas os 5 produtos mais caros.

SELECT nome, preco from produto
ORDER BY preco desc limit 5

-- PARTE B - FILTROS

-- 6. Liste os produtos com preço entre R$ 8,00 e R$ 15,00.
sELECT nome, preco FROM produto WHERE preco BETWEEN 8.00 AND 15.00;

-- 7. Liste os clientes das cidades Limeira ou Americana.

SELECT nome, cidade
FROM cliente
WHERE
    cidade = "Limeira"
    OR cidade = "Americana";

-- 8. Localize os produtos cujo nome contém a palavra “Café”.
SELECT nome from produto WHERE nome LIKE "Café%";
-- 9. Liste os clientes que não informaram telefone.
select nome, telefone from cliente where telefone is null;
-- 10. Mostre os pedidos FINALIZADOS com valor acima de R$ 20,00,
--     do maior para o menor valor.

select id_pedido, valor_total, status_pedido
FROM pedido
WHERE status_pedido = 'Finalizados' and (valor_total > 10)
ORDER BY valor_total DESC;


-- PARTE C - CÁLCULOS E AGRUPAMENTOS

-- 11. Informe quantos produtos estão cadastrados.

SELECT COUNT(*) AS TOTAL_produtos FROM produto;

-- 12. Mostre menor preço, maior preço e preço médio dos produtos.
SELECT
    MIN(preco) AS Preços_Baixos,
    MAX(preco) AS Preço_Alto,
    AVG(preco) AS Média_Preços
FROM produto;

-- 13. Informe quantos clientes existem em cada cidade.

SELECT cidade, COUNT(*) AS QTDE_CLIENTES
FROM cliente
GROUP BY
    CIDADE;

-- 14. Mostre somente as cidades que possuem dois ou mais clientes.
SELECT cidade, COUNT(*) AS QTDE_CLIENTES
FROM cliente
GROUP BY
    cidade
HAVING
    COUNT(*) >=2;


-- 15. Calcule o faturamento total considerando apenas pedidos FINALIZADOS.
SELECT SUM(valor_total) AS FATURAMENTO
FROM pedido
WHERE
    status_pedido = 'Finalizados'

-- PARTE D - RELACIONAMENTOS

-- 16. Liste cada pedido exibindo id, data, nome do cliente, status e valor total.
SELECT P.ID_PEDIDO, P.DATA_PEDIDO, C.NOME AS CLIENTE, P.VALOR_TOTAL
FROM PEDIDO AS P
INNER JOIN CLIENTE AS C ON C.ID_CLIENTE = P.ID_CLIENTE;

-- 17. Liste cada produto acompanhado do nome de sua categoria.
SELECT PR.NOME AS PRODUTO, CA.NOME AS CATEGORIA
FROM PRODUTO AS PR
INNER JOIN CATEGORIA AS CA
 ON CA.ID_CATEGORIA = PR.id_categoria
ORDER BY CA.NOME, PR.NOME;

-- 18. Gere um relatório dos itens vendidos: pedido, produto, quantidade,
--     preço unitário e subtotal.

SELECT
    P.ID_PEDIDO,
    DATE_FORMAT(
        P.DATA_PEDIDO,
        '%d %m  %Y %H:%i'
    ) AS DATA,

    PR.NOME AS PRODUTO,
    IP.QUANTIDADE,
    IP.PRECO_UNITARIO,
    IP.QUANTIDADE * IP.PRECO_UNITARIO AS SUBTOTAL
FROM
    PEDIDO AS P
    INNER JOIN CLIENTE AS C ON C.ID_CLIENTE = P.id_cliente
    INNER JOIN item_pedido AS IP ON P.id_pedido = P.ID_PEDIDO
    INNER JOIN PRODUTO AS PR ON PR.ID_PRODUTO = IP.ID_PRODUTO
ORDER BY P.ID_PEDIDO, PR.NOME;

-- 19. Mostre todos os clientes, inclusive aqueles que nunca fizeram pedidos.

SELECT C.NOME, P.ID_PEDIDO, P.DATA_PEDIDO
FROM CLIENTE AS C
    LEFT JOIN pedido AS P ON P.id_cliente = C.id_cliente
ORDER BY C.NOME;
-- 20. Liste apenas os clientes que nunca fizeram pedidos.
SELECT C.ID_CLIENTE, C.NOME
FROM CLIENTE AS C
    LEFT JOIN PEDIDO AS P ON P.id_cliente = C.id_cliente
WHERE
    P.id_cliente IS NOT NULL;

-- PARTE E - DESAFIO GERENCIAL

-- 21. Informe quantos pedidos FINALIZADOS cada cliente realizou e quanto
--     cada cliente gastou. Ordene do maior gasto para o menor.

SELECT
    C.NOME AS CLIENTE,
    COUNT(P.ID_PEDIDO) AS QTDE_PEDIDOS,
    SUM(P.VALOR_TOTAL) AS TOTAL_COMPRADO
FROM CLIENTE AS C
    INNER JOIN PEDIDO AS P ON P.ID_CLIENTE = C.id_cliente
WHERE
    P.status_pedido = 'ABERTO'
GROUP BY
    C.id_cliente,
    C.nome
ORDER BY TOTAL_COMPRADO DESC;

-- 22. Mostre a quantidade de produtos e o preço médio de cada categoria.

SELECT CA.NOME AS CATEGORIA, COUNT(PR.ID_PRODUTO) AS QTDE_PRODUTOS
FROM CATEGORIA AS CA
    LEFT JOIN PRODUTO AS PR ON PR.id_categoria = CA.id_categoria
GROUP BY
    CA.id_categoria,
    CA.nome
ORDER BY QTDE_PRODUTOS DESC;

-- 23. Descubra quais produtos possuem preço superior ao preço médio geral.

SELECT NOME, PRECO
FROM PRODUTO
WHERE
    PRECO > (
        SELECT AVG(PRECO)
        FROM PRODUTO
    )
ORDER BY PRECO DESC;

-- 24. Classifique os produtos como Econômico, Intermediário ou Premium.
--     Defina e informe suas faixas de preço.

SELECT
    NOME,
    PRECO,
    CASE
        WHEN PRECO < 8.00 THEN 'ECONOMICO'
        WHEN PRECO < 15.00 THEN 'INTERMEDIARIO'
        ELSE 'PREMIUM'
    END AS FAIXA_PREÇOS
FROM PRODUTO
ORDER BY PRECO;