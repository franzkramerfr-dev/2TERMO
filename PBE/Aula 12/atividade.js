const fs = require('fs');
const entrada = require('readline-sync');

console.log("=== SISTEMA DE CONSULTA DE ESTOQUE ===\n");

try{
    const dadosTexto = fs.readFileSync('estoque.json', 'utf-8');
    const produtos = JSON.parse(dadosTexto);
    

    const termoBusca = entrada.question("Digite a quantidade do produto para buscar: ");

    function verEstoqueBaixo() {
    console.log(`\n--- Produtos com estoque baixo (menos de ${termoBusca} unidades) ---`);

    const estoqueBaixo = produtos.filter(p => p.qtd < parseInt(termoBusca));
    
    console.log(estoqueBaixo);
    const resultado = produtos.find(p => p.qtd === parseInt(termoBusca));
    }
    verEstoqueBaixo();
} catch (erro) {
    console.log("Erro ao acessar o banco de dados: " + erro.message);
}

