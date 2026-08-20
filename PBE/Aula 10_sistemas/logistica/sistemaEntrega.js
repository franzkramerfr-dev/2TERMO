const entrada = require('readline-sync');

const logistica = require ('./calculadoraFrete');

console.log(" === SISTEMA DE ENTREGA ===")

const nomeProduto = entrada.question("Digite o nome do produto: ");

const distanciaKM = entrada.questionInt("Inforkme a distância da entrega em KM: ");

const valorTotal = entrada.questionFloat("Informe o valor total da carga: ");

const calcularFrete = logistica.calcularBase(distanciaKM)
const calcularSeguro = logistica.calcularSeguro(valorTotal)
const prazoEntrega = logistica.verificarPrazo(distanciaKM)

console.log("=== RELATORIO DE POSTAGEM ===")

console.log(`Nome do produto: ${nomeProduto}`)
console.log(`Valor do frete: ${calcularFrete.toFixed(2)}`)
console.log(`Valor Total: ${valorTotal + calcularFrete.toFixed(2)}`)
console.log(`Prazo de Entrega: ${prazoEntrega}`)
