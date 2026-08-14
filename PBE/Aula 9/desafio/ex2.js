// Desafio 2: O Gerador de Parcelas (Laços de Repetição)
// Objetivo: Praticar o uso do laço for e cálculos
// matemáticos.
// Enunciado: Uma loja de ferramentas quer mostrar ao
// cliente o valor das parcelas de uma compra. Peça o valor
// total do produto e a quantidade de parcelas (máximo 12).
// Use um loop para imprimir na tela o valor de cada parcela.
// - Exemplo: "Parcela 1: R 50,00", "Parcela 2: R 50,00"...


const entrada = require('readline-sync');

const nomeProduto = entrada.question("Informe o nome do produto: ");
const numeroParcelas = entrada.questionInt("Informe a quantidade de parcelas: ");
const valorProduto = entrada.questionFloat("Informe o valor do produto: ");

const calculo = (valorProduto / numeroParcelas);
if (numeroParcelas <=12) {
for (let i = 0; i < numeroParcelas; i++ ) {
    console.log(`Produto ${nomeProduto} | Parcela ${i+1}:R$ ${calculo}`)

} 
}else {
    console.log("Informe uma parcela que se encaixe até 12.")
}