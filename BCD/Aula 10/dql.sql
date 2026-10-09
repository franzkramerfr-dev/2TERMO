-- Active: 1788519228847@@127.0.0.1@3306@smartcoffe_franz02
-- AULA 10 - DQL (DATA QUERY LANGUAGE) - LINGUAGEM DE CONSULTA DE DADOS

-- EX 1: SELECT SIMPLES 
SELECT coluna
FROM tabela;

select * from cliente;
-- CONSULTA TODAS AS COLUNAS NA TABELA

SELECT nome, telefone FROM cliente;
-- CONSULTA APENAS AS COLUNAS NOME E TELEFONE NA TABELA

SELECT nome FROM produto;
-- CONSULTA APENAS A COLUNA NOME NA TABELA PRODUTO

SELECT nome, ativo FROM produto;
-- CONSULTA DADOS COM VARIAS COLUNAS

-- EX 2: CONSULTANDO E PERSONALIZANDO A CONSULTA
SELECT nome AS Nome_Cliente, telefone AS Contato_Cliente
FROM cliente;
-- PERMITE PERSONALIZAR O NOME DAS COLUNAS SOMENTE NA CONSULTA

SELECT nome, preco, preco * 1.00 AS preco_ajustado 
FROM produto;

-- EX 3: DISTINCT - ELIMINAR REPETIÇÕES
SELECT DISTINCT cidade FROM cliente;

SELECT cidade FROM cliente;

-- COM DISTINCT CADA RESULTADO É APRESENTADO APENAS UMA VEZ, SEM REPETIÇÕES. SEM O DISTINCT, OS RESULTADOS PODEM SE REPETIR.

-- EX 4: USO DE WHERE - FILTRO DE REGISTROS
-- INSERIR CONDIÇÕES E UTILIZAR OPERADORES DE COMPARAÇÃO
-- = IGUAL
-- <> OU != DIFERENTE
-- > MAIOR QUE
-- >= MAIOR IGUAL
-- < MENOR QUE 
-- <= MENOR IGUAL

SELECT nome, preco 
from produto
WHERE preco > 15.00;
-- CONSULTAR PRECOS QUE POSSUEM VALOR MAIOR QUE 15.00

SELECT nome, preco
FROM produto
WHERE ativo = TRUE;
-- CONSULTAR PRODUTOS QUE ESTÃO ATIVOS OU INATIVOS (TRUE OU FALSE)

SELECT id_pedido, data_pedido, valor_total
FROM pedido
WHERE valor_total >= 10.00;
--CONSULTAR PEDIDOS COM VALOR TOTAL MAIOR OU IGUAL A 10.00

-- EX 5: USO DE AND, OR E NOT
-- AND - TODAS AS CONDIÇÕES VERDADEIRAS 
SELECT nome, preco
FROM produto
WHERE preco > 8.00 AND preco <= 25.00;

-- OR - UMA DAS CONDIÇÕES PRECISAM SER VERDADEIRA

SELECT nome, cidade FROM cliente
WHERE cidade = "Limeira" OR cidade = "Campinas";

-- NOT - CRIA UMA CONDIÇÃO DE NEGAÇÃO
SELECT nome, cidade
FROM cliente
WHERE NOT cidade = "Limeira";

-- AND E OR JUNTOS PRECISAMOS INSERIR OS ()
SELECT nome, cidade, ativo
FROM cliente
WHERE ativo = TRUE AND (cidade = "Limeira" OR cidade = "Campinas");
-- O AND OU OR PRECISA ESTAR DENTRO DOS (), E VAI APRESENTAR OS RESULTADOS QUE ATENDEM AOS DOIS CRITÉRIOS, OU SEJA, ESTÃO ATIVOS E MORAM EM LIMEIRA OU CAMPINAS.

-- EX:6 BETWEEN - PESQUISAR POR INTERVALOS
-- LIMITE INICIAL E FINAL
SELECT nome, preco
FROM produto
WHERE preco BETWEEN 10.00 AND 20.00;
-- CONSULTA POR INTERVALO DE VALORES

SELECT ID_PEDIDO, DATA_PEDIDO, VALOR_TOTAL
FROM pedido
WHERE DATA_PEDIDO BETWEEN '2026-09-01 00:00:00' AND '2026-09-30 23:59:59';
-- CONSULTA POR INTERVALO DE DATAS


-- EX:7 IN - MUITAS POSSIBILIDADES 
SELECT nome, cidade
FROM cliente
WHERE cidade IN ("Limeira", "Campinas", "Piracicaba");
--FACILITA O TRABALHO IMVES DE UTILIZAR O OR, PODEMOS COLOCAR VÁRIAS OPÇÕES DENTRO DO IN

SELECT nome, cidade
FROM cliente
WHERE cidade NOT IN ("Limeira", "Piracicaba");

-- EX:8 LIKE - PESQUISAR POR TEXTOS
-- CORINGAS
-- % VARIOS CARACTERES
-- _APENAS UM CARACTERE

SELECT nome
from produto
WHERE nome LIKE "Café%";

-- CONSULTA PELA PALAVRA QUE DESEJA E QUAL COMEÇA
SELECT nome
from produto
WHERE nome LIKE "%chocolate%";
-- CONSULTA PELA PALAVRA QUE CONTEM A PALAVRA CHOCOLATE

SELECT NOME
FROM cliente
WHERE NOME LIKE "%Silva";
-- CONSULTA PELA PALAVRA QUE COMEÇA COM SILVA

SELECT NOME
FROM produto
WHERE NOME LIKE "%_afé%";

-- EX:9 NULL - AUSENCIA DE VALOR
select nome, telefone
from cliente
where telefone is null;

select nome, telefone
from cliente
where telefone is not null;

select nome, telefone
from cliente
where telefone = 'NULL';

-- EX:10 ORDER BY - ORDENAR RESULTADOS (SUBSTITUI O WHERE)
-- ASC É CRESCENTE
-- DESC É DECRESCENTE

SELECT nome, preco 
FROM produto
ORDER BY preco ASC;

SELECT nome, preco
FROM produto    
ORDER BY preco DESC;

SELECT NOME, PRECO
FROM produto
ORDER BY PRECO DESC, NOME ASC;

SELECT CIDADE, NOME
FROM cliente
ORDER BY CIDADE ASC, NOME DESC;
-- ORDENAR POR MAIS DE UMA COLUNA

-- EX:11 LIMIT - LIMITAR QUANTIDADE DE LINHAS
SELECT nome, preco
from produto
order by preco desc
limit 5;

select nome, preco
from produto
order by nome
limit 10 offset 5;

-- EX 12 - CALCULOS EM COLUNAS
select nome, preco, preco * 1.30 AS Preço_Reajuste
from produto;

SELECT id_item, quantidade, preco_unitario, quantidade * preco_unitario AS Subtotal FROM item_pedido;

-- EX: 13 - FUNÇÕES
-- TEXTOS
SELECT UPPER (nome) AS nome_M , lower (cidade) AS cidade_m
FROM cliente;
--TROUXE TODA A COLUNA NOME MAIUSCULA E TODA A COLUNA CIDADE MINUSCULA

SELECT CONCAT(nome, ' -- ', cidade) AS Cliente_Cidades
FROM cliente;

-- NUMEROS
SELECT nome, preco, ROUND(preco * 0.90, 2) AS Preco_Desconto
FROM produto;

-- DATAS 
select id_pedido, data_pedido, valor_total, date(data_pedido) as datas, month(data_pedido) as mês, year(data_pedido) as ano, day(data_pedido) as dias, time(data_pedido) as horário
from pedido

-- SUBSTITUIR O NULL NO RESULTADO COALESNCE
SELECT nome, COALESCE(telefone, 'Não Informado') AS Telefone
FROM cliente;

-- EX: 14 - FUNCOES DE AGREGAÇÃO
COUNT = CONTAR UMA QUANTIDADE
SUM = SOMAR VALORES ADD
AVG = CALCULAR MÉDIA
MIN = MINIMO VALOR 
MAX = MAXIMO VALOR

SELECT COUNT (*) AS TOTAL_CLIENTE 
FROM clientE;

-- QUANTOS CLIENTES EXISTEM NA TABELA

SELECT ROUND (AVG (preco),2) AS Preço_Médio_Produtos
FROM produto;
-- ARREDONDA A MEDIA

SELECT MIN(preco) AS Preços_Baixos,
    MAX (preco) AS Preço_Alto,
    AVG(preco) AS Média_Preços
FROM produto;


SELECT SUM (valor_total) AS FATURAMENTO
FROM pedido
WHERE status_pedido = 'Aberto'
-- TOTAL DE PEDIDOS COM CRITERIO

--EX:15 - GROUP BY AGRUPAR DADOS
SELECT cidade, COUNT(*) AS QTDE_CLIENTES
FROM cliente
GROUP BY CIDADE;
-- TOTAL DE CLIENTES EM CADA CIDADE

select id_categoria, COUNT(*) AS QTDE_PRODUTOS
FROM produto
GROUP BY id_categoria;
-- QUANTIDADE DE PRODUTOS POR CATEGORIA

-- EX: 16 - HAVING CRIAR CONDIÇÕES EM AGRUPAMENTOS
-- WHERE FILTRA LINHAS ANTES DO AGRUPAMENTO
-- HAVING FILTRA LINHAS DEPOIS DO GROUP BY

SELECT cidade, COUNT (*) AS QTDE_CLIENTES
FROM cliente
GROUP BY cidade
HAVING COUNT (*) <= 10;

-- CONSULTA PARA CIDADES COM PELO MENOS DOIS CLIENTES

-- EX: 17 - RESUMO DE UMA CONSULTA COMPLETA
SELECT colunas
FROM tabelas
WHERE condicao -- LIKE
GROUP BY coluna_agrupar
HAVING condicao_agrupar
ORDER BY colunas
LIMIT quantidade;







