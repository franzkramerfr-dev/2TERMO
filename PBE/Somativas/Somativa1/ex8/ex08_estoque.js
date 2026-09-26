
const entrada = require ('readline-sync')
const componentes = []

for (let i = 0; i < 3; i++) {
    const nome = entrada.question(`Digite o nome do componente ${i + 1}: `)
    const quantidade = entrada.questionInt('Digite a quantidade do componente: ')
    const estoqueMinimo = entrada.questionInt('Digite o estoque minimo do componente: ')
    const componente = {
        nome: nome,
        quantidade: quantidade,
        estoqueMinimo: estoqueMinimo
    }
    componentes.push(componente);
    if(quantidade < estoqueMinimo) {
    console.log(`REPOR ESTOQUE | COMPONENTE: ${nome}`)
} else{
    console.log(`ESTOQUE OK | COMPONENTE: ${nome}`)
}
}

