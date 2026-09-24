const entrada = require ('readline-sync');

const nome = entrada.question("Digite o nome do material: ");

const qtd_compra = entrada.questionInt("Digite a quantidade de materia-prima comprada: ");

const preco = entrada.questionFloat("Informe o preco unitario: ")

function calculo(qtd_compra, preco){
    const valorTotal = qtd_compra * preco
    return valorTotal
}

console.log(`Materia-Prima: ${nome}, Valor Total:`, calculo(qtd_compra, preco))