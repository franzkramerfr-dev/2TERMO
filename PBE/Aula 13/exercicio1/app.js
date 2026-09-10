const entrada = require('readline-sync');
const conversor = require('./conversor');

const calculoMoeda = entrada.question("Qual o valor em Reais que deseja converter em Dolar? ")

function calcular (converter){
    console.log("--- Quantidade Convertida ---")
    console.log(`O valor convertido em Dolar é ${conversor.converter(calculoMoeda)}`);
}

calcular(Number(calculoMoeda));