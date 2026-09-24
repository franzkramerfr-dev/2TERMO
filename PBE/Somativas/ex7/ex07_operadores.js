const entrada = require('readline-sync')
let operadores = []

for (let i = 0; i < 5; i++) {
    let nome = entrada.question(`Digite o nome do ${i + 1}°operador: `);
    operadores.push(nome);
}

console.log(`${operadores.join(" | ")}`)
console.log(`Total de operadores: ${operadores.length}`);