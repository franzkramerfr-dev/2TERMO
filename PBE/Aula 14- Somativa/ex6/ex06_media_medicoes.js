// Objetivo: Combinar repetição, entrada de dados e acumulador.
// Durante um teste de processo, são realizadas cinco medições. Crie um programa que leia as cinco medições e calcule a média.
// O programa deve:
// ☐ Criar uma variável acumuladora iniciada em zero.
// ☐ Usar um laço para solicitar exatamente 5 valores.
// ☐ Somar cada valor ao acumulador.
// ☐ Ao final, calcular a média.
// ☐ Exibir a soma das medições e a média final.

const entrada = require('readline-sync');

let acumulador = 0;

for (let i = 0; i < 5; i++) {
    let valor = entrada.questionFloat(`Informe a medicao ${i + 1}: `);
    acumulador += valor;
}
const media = acumulador / 5;
console.log(`Soma das medicoes: ${acumulador}`);
console.log(`Media final: ${media.toFixed(2)}`);
