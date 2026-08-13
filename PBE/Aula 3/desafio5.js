const entrada = require('readline-sync')

console.log("===OPERADORES LÓGICOS===")

const renda = entrada.questionFloat("Digite a renda mensal do cliente: ");
const status_identidade = entrada.keyInYNStrict("Seu nome está limpo? "); // 
 
 

if (renda >= 2000 || status_identidade === true) {
    console.log('\nEmprestimo Aprovado');
} else {
    console.log('\nEmprestimo Negado');
}