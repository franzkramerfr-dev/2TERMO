const entrada = require ('readline-sync');
// ☐ Criar o arquivo app.js.
// ☐ No app.js, importar readline-sync e o módulo funcoesManutencao.js usando require().
// ☐ Solicitar nome da máquina, valor das peças, horas de serviço e meses desde a última manutenção.
// ☐ Exibir um relatório final com máquina, mão de obra, peças, total e situação da garantia.
const manutencao = require('./funcoesManutencao.js')

console.log("---SISTEMA DE MODULAR DE MANUTENÇÃO---")

const nome = entrada.question("Informe o nome da maquina: ")

const valorPeca = entrada.questionFloat("Informe o valor da peca: ")

const horasServico = entrada.questionFloat("Informe a quantidade de horas de servico: ")

const mesesManutencao = entrada.questionInt("Informe quantos meses desde a ultima manutencao: ")

console.log("---RELATORIO FINAL---")

const maoDeObra = manutencao.calcularMaoDeObra(horasServico)

const situacaoGarantia = manutencao.verificarGarantia(mesesManutencao)
const total = maoDeObra + valorPeca

console.log(`Maquina: ${nome}`)
console.log(`Mão de obra: R$ ${maoDeObra}`)
console.log(`Peças: R$ ${valorPeca}`)
console.log(`Total: R$ ${total}`)
console.log(`Situação da garantia: ${situacaoGarantia}`)

manutencao(Number(manutencao.calcularMaoDeObra(horasServico)))
manutencao(Number(manutencao.verificarGarantia(mesesManutencao)))

