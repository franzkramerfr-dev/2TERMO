const entrada = require('readline-sync');
const listaVisitantes = [];

while (true) {
    const resposta = entrada.question("Deseja cadastrar um novo visitante? (s/n)\n");


    if(resposta === "s") {
        const nome = entrada.question("Digite o nome:");
        const empresa = entrada.question("Digite a empresa:");
        const visitante = {nome, empresa};
        listaVisitantes.push(visitante);
    }
    if (resposta === "n") {
        console.log("Lista de visitantes cadastrados hoje:");
        console.log(listaVisitantes);
        break;
    }}