// Desafio 3: Calculadora de Área de Terrenos (Funções)
// Objetivo: Criar uma função que recebe parâmetros e
// retorna um valor.
// Enunciado: Crie uma função chamada calcularArea que
// receba a largura e o comprimento de um terreno e retorne
// a área total (largura * comprimento). No programa
// principal, peça os dados de 3 terrenos diferentes ao
// usuário, chame a função para cada um e mostre o
// resultado.

const entrada = require('readline-sync')

function calcularArea (largura, comprimento) {
    return (largura * comprimento) 
}
const comprimento1 = entrada.questionFloat("Digite o comprimento do terreno 1: ")
const largura1 = entrada.questionFloat("Digite a largura do terreno 1: ")

const comprimento2 = entrada.questionFloat("Digite o comprimento do terreno 2: ")
const largura2 = entrada.questionFloat("Digite a largura do terreno 2: ")

const comprimento3 = entrada.questionFloat("Digite o comprimento do terreno 3: ")
const largura3 = entrada.questionFloat("Digite a largura do terreno 3: ")

const areaTotal1 = calcularArea(largura1, comprimento1)
const areaTotal2 = calcularArea(largura2, comprimento2)
const areaTotal3 = calcularArea(largura3, comprimento3)

console.log(
    `A área total do terreno 1 é ${areaTotal1}m²\n
    A área total do terreno 2 é ${areaTotal2}m²\n
    A área total do terreno 3 é ${areaTotal3}m²\n`
    
)