const entrada = require('readline-sync');

console.log("===CÁLCULO COM DECISÃO===");

const valor_total = entrada.questionFloat("\nInforme o valor total de sua comanda: ");

const desconto = (valor_total * 0.10)

if (valor_total >=100){
    console.log(`\nValor com desconto: ${(valor_total - desconto).toFixed(2)}`);

} else {
    console.log(`\nValor a ser pago: ${valor_total.toFixed(2)}`);
}
