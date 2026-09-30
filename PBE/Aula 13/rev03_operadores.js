const input = require ('readline-sync');

const operadores = [];

console.log("--- CADASTRO DE OPERADORES ---");

for(let i = 1; i <= 5; i++) {
    const nomeOperadores = input.question (`Informe o nome do operador ${i}: `);
    operadores.push(nomeOperadores);
}

console.log("--- LISTA DE CADASTRO ---")

for ( let i = 0; i < operadores.lenght; i++) {
    console.log(`${i+1} - ${operadores[i]}`);
}