const entrada = require('readline-sync');
const fs = require ('fs')

const ferramentas = [];

const qtdFerramentas = entrada.questionInt('Informe a quantidade de ferramentas que serao registradas: ')

for(let i = 1; i <= qtdFerramentas; i++) {
    const nome = entrada.question(`Digite o nome da ferramenta ${i}: `)
    const qtd = entrada.questionInt(`Digite a quantidade da ferramenta ${i}: `)
    const custoUnitario = entrada.questionFloat(`Digite o custo unitario da ferramenta ${i}: `)

    ferramentas.push({nome, qtd, custoUnitario})
    
}
fs.writeFileSync('ferramentas.json', JSON.stringify(ferramentas, null, 2))
console.log("Ficheiro criado com sucesso!")
console.log("Verifique o arquivo 'ferramentas.json'")
