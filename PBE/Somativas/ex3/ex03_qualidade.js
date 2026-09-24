const entrada = require('readline-sync')

const pesoPesa = entrada.questionFloat("Informe o peso da peca: ")

if (pesoPesa >=95 && pesoPesa <=105 ) {
    console.log(`Peso ${pesoPesa} | PECA APROVADA`)
} else {
        console.log(`Peso ${pesoPesa} | PECA REPROVADA`)
}