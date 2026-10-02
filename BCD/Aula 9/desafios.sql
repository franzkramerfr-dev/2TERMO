-- ============================================================
-- AULA 08 - ATIVIDADE PRÁTICA DE DML
-- Nome: Franz Kramer da Silva
-- Turma: 2DEVIS Data: 02/10/2026
-- Base: smartcoffe_franz02
-- ============================================================
USE smartcoffe_franz02;

-- IMPORTANTE:
-- Para toda questão de UPDATE ou DELETE, escreva primeiro um SELECT
-- com o mesmo WHERE para validar os registros afetados.

-- PARTE A - INSERT

-- 1. Cadastre dois novos clientes com dados diferentes.
INSERT INTO cliente (nome,email,telefone,cidade,ativo) VALUES
('João da Silva','joao.silva@email.com','19999999999','São Paulo',TRUE),
('Maria Oliveira','maria.oliveira@email.com','19999999998','Rio de Janeiro',TRUE);

-- 2. Cadastre a categoria 'Especiais da Casa'.
INSERT INTO categoria (nome) VALUES
('Preferidos');
-- 3. Localize o id da categoria criada e cadastre três produtos nela.
INSERT INTO produto (nome, preco, ativo, id_categoria) VALUES
('Café Expresso', 10.99, TRUE, LAST_INSERT_ID()),
('Donut', 8.99, TRUE, LAST_INSERT_ID()),
('Brownie', 12.99, TRUE, LAST_INSERT_ID());

-- 4. Cadastre um terceiro cliente sem telefone.
INSERT INTO cliente (nome, email, telefone, cidade, ativo) VALUES
('Ana Abreu', 'anaabreu23@gmail.com', NULL, 'Limeira-SP', TRUE);

SELECT * FROM cliente;



-- 5. Crie um novo pedido para um dos clientes cadastrados.

INSERT INTO pedido (data_pedido, status_pedido, valor_total, id_cliente) VALUES
(now(), 'ABERTO', 12.00, 10); 


-- 6. Use LAST_INSERT_ID() para guardar o id do pedido em @pedido_atividade
--    e insira pelo menos dois itens nesse pedido.
SET @pedido_atividade = LAST_INSERT_ID();
INSERT into item_pedido (id_pedido,id_produto,quantidade,preco_unitario) VALUES 
(@pedido_atividade, 1, 1, 13.79),
(@pedido_atividade, 2, 1, 8.99);

SELECT * FROM item_pedido ;



-- PARTE B - UPDATE

-- 7. Corrija o telefone de um dos clientes criados.
-- SELECT de validação:
-- UPDATE:
-- SELECT final:

UPDATE CLIENTE
SET telefone = '1999925759'
WHERE id_cliente = 11;
SELECT * FROM cliente
-- 8. Altere cidade e telefone de outro cliente em um único UPDATE.

UPDATE cliente SET cidade = 'Santos',
    telefone = '11111111111'
WHERE id_cliente = 11;

-- 9. Aumente em 8% o preço dos produtos da categoria 'Especiais da Casa'.

UPDATE produto
SET preco = preco * 1.08
where id_produto

-- 10. Altere o status do pedido criado para 'PREPARANDO'.
UPDATE pedido
set status_pedido = 'PREPARANDO' 
where id_pedido = @pedido_atividade

-- 11. Atualize valor_total do pedido de acordo com os itens cadastrados.
--     Você pode calcular previamente com SELECT SUM(quantidade * preco_unitario).

UPDATE pedido
SET valor_total = 23.00
WHERE id_pedido = @pedido_atividade;

-- 12. Escolha um dos produtos criados e faça uma exclusão lógica (ativo = FALSE).

UPDATE produto
SET ativo = FALSE
WHERE id_produto = 1;

-- PARTE C - DELETE

-- 13. Crie um cliente de teste sem pedidos.
--     Depois localize e exclua apenas esse cliente.

INSERT INTO cliente (nome,email,telefone,cidade,ativo) VALUES
('Cliente Teste','cliente.teste@gmail.com', NULL, 'São Paulo', TRUE);

select * from cliente where nome = 'Cliente Teste';

delete from cliente
where id_cliente = 24



-- 14. Tente excluir um cliente da base original que possua pedidos.
--     Deixe o DELETE comentado após o teste e descreva o erro abaixo.
-- Resultado observado: Exibiu uma mensagem de erro pois possui informação dentro da tabela. Criando uma restrição por que existe uma dependencia com a fk que faz relação dentro da tabela

delete from cliente
where id_cliente = 9

select*from pedido

-- 15. Explique em comentário por que a FK bloqueou a exclusão.
-- Resposta: Por que FK possui dependencia de outra tabela como um relacionamento. Isso gera uma restrição devido a innformação que tem na tabela.

-- 16. Crie uma categoria temporária chamada 'Excluir Depois' e remova-a.

INSERT INTO categoria (nome) VALUES 
('Excluir Depois');

DELETE FROM categoria
WHERE nome = 'Excluir Depois';