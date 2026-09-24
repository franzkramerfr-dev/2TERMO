const entrada = require('readline-sync')

console.log("===DESAFIO 3===")

const valor_gasolina = entrada.questionFloat("\nInforme o valor do litro da gasolina:")
const valor_alcool = entrada.questionFloat("\nInforme o valor do litro do álcool:")
const calculo = valor_alcool/valor_gasolina


if (calculo <=0.7){
    console.log("Abasteça com ÁLCOOL!")
} else {
    console.log("Abasteça com GASOLINA!")
}