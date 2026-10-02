
const fs = require('fs')
const dados = fs.readFileSync("materiais.json", "utf-8");

const materiais = JSON.parse(dados);

for (let i = 0; i < materiais.length; i++) {
    const valorTotalItem = materiais[i].quantidade * materiais[i].valorUnitario;
    console.log(`\n--- Material ${i+1} ---`)
    console.log(`Código: ${materiais[i].codigo}`)
    console.log(`Descrição: ${materiais[i].descricao}`)
    console.log(`Quantidade: ${materiais[i].quantidade}`)
    console.log(`Valor unitário: R$ ${materiais[i].valorUnitario.toFixed(2)}`)
    console.log(`Valor em estoque: R$ ${valorTotalItem.toFixed(2)}`)
}
