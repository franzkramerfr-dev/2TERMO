const entrada = require('readline-sync');
console.log("===VERIFICADOR DE VOTAÇÃO===");

const nome = entrada.question("Digite o nome do cliente:\n");
const nascimento = Number(entrada.question("Informe o ano de nascimento do cliente:\n"));
const calculo_idade = 2026 - nascimento;

if (calculo_idade>=16){
    console.log(`\nO cliente, ${nome} já pode votar. Votação Aprovada!`);
} else {
    console.log(`\nO cliente, ${nome} é menor de idade e não pode votar. Votação Negada !`)
}