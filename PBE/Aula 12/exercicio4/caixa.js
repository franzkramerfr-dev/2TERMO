const entrada = require ('readline-sync');
const modulo = require ('./calculoVendas.js');
const { calcularTotal, gerarCupom } = require('./calculoVendas');

const nome = entrada.question("Informe o nome do cliente: ")
const quantidadeProduto = entrada.question ("Quantidade de produtos: ")
const precoProduto = entrada.question ("Preco: ")


const total = calcularTotal (
    Number(precoProduto),
    Number(quantidadeProduto)
)

gerarCupom(nome, total)