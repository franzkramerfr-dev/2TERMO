CREATE TABLE `Clientes` (
  `id_cliente` INT(pk,increment),
  `nome_cliente` varchar(60) NOT NULL
);

CREATE TABLE `Produtos` (
  `id_produtos` INT(pk,increment),
  `id_cliente` INT NOT NULL,
  `nome_produto` varchar(120) NOT NULL
);

ALTER TABLE `Produtos` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id_cliente`);
