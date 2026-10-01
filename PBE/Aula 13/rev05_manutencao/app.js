const entrada = require ('readline-sync');
const funcoes = require ('./funcoesManutencao.js')

console.log('--- CALCULO DE CUSTO ---');

const nomeMaquina = entrada.question('Digite o nome da maquina')

const valorPeca = entrada.question('Digite o valor da peca: ');

const horas = entrada.questionInt('Digite quantas horas de servico: ')

const meses = entrada.questionInt('Digite a quantidade de meses desde a ultima manutenca: ');

const total = funcoes.calcularTotal(valorPeca, horas);
const maoDeObra = funcoes.calcularMaoDeObra(horas, valorPorHora);
const garantia = funcoes.verificarGarantia(meses)

console.log("--- RELATORIO FINAL ---")
console.log(`Nome da maquina: ${nomeMaquina}`);
console.log(`Valor por peca: ${valorPeca.toFixed(2)}`)
console.log(`Valor total: ${total}`)
console.log(`Situacao: ${garantia}`)
