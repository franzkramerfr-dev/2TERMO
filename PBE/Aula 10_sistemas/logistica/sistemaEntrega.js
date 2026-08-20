const entrada = require('readline-sync');

const logistica = require ('./calculadoraFrete');

console.log(" === SISTEMA DE ENTREGA ===")

const nomeProduto = entrada.question("Digite o nome do produto: ");

const distanciaKM = entrada.questionInt("Inforkme a distância da entrega em KM: ");

const valorPrazo = entrada.questionFloat("Informe o valor total da carga: ");

const calcularFrete = logistica.calcularBase(distanciaKM)
const calcularSeguro = logistica.calcularSeguro(valorPrazo)
const prazoEntrega = logistica.verificarPrazo(distanciaKM)

const valorTotal = calcularFrete + calcularSeguro

console.log("=== RELATORIO DE POSTAGEM ===")

console.log(`Nome do produto: ${nomeProduto}`)
console.log(`Valor do frete: ${calcularFrete.toFixed(2)}`)
console.log(`Valor Total: ${valorTotal.toFixed(2)}`)
console.log(`Prazo de Entrega: ${prazoEntrega}`)
