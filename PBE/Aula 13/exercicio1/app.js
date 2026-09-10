const entrada = require('readline-sync');
const conversor = require('./conversor');

const calculoMoeda = entrada.questionFloat("Qual o valor em Dolares que deseja converter em Reais? ")

function calcular (converter){
    console.log("--- Quantidade Convertida ---")
    console.log(`O valor convertido em Reais é ${conversor.converterDolarParaReal(calculoMoeda)}`);
}

calcular(Number(calculoMoeda));