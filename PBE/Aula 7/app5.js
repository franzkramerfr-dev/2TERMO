const entrada = require('readline-sync');

console.log("===SISTEMA DE ANALISE DE CREDITO===");
const nome = entrada.question("Digite o nome do cliente: ");
const idade = entrada.questionInt("Digite a idade do cliente: ");
const renda = entrada.questionFloat("Digite a renda do cliente: ");
const temImovel = entrada.keyInYNStrict("Possui imóvel próprio? "); // 
 
// A Lógica Combinada
// (idade >= 18) é obrigatório  
// (renda >= 2500) || temImovel === true) um dos dois tem que ser verdadeiro    

if (idade >= 18 && (renda >= 2500 || temImovel === true)) {
    console.log('\nPARABENS, ${nome}! Seu crédito foi aprovado!');
} else {
    console.log('\nInfelizmente, ${nome}, seu crédito não foi aprovado!');
}