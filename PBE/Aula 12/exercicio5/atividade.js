const entrada = require('readline-sync')
let pecasDefeituosas = []

const quantidade = entrada.questionInt("Quantas pecas com defeito foram encontradas? ")

for (let i = 0; i < quantidade; i++) {
    let peca = entrada.questionInt(`Digite o numero da peca com defeito ${i + 1}: `)
    pecasDefeituosas.push(peca)
}

console.log("Pecas com defeito: ", pecasDefeituosas)

