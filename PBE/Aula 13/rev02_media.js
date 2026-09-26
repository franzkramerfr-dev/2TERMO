const input = require('readline-sync');

console.log('--- CALCULO DE MEDIA ---');

let acumulador = 0;

for (let i = 1; i < 7; i++) {
    const medicao = input.questionFloat (`\nInforme o valor da medicao ${i}: `);
    
  acumulador += medicao

}

const media = acumulador / 6

console.log('--- RELATORIO FINAL ---')
console.log(`Total de defeitos: ${acumulador}`);
console.log(`Media de defeitos: ${media.toFixed[2]}`)