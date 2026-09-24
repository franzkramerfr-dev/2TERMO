const entrada = require('readline-sync')
const sensor = require('./sensor.js')

console.log("--- GESTOR DE CLIMA INDUSTRIAL ---")

const temperatura = entrada.question("Informe a temperatura da Caldeira: ")
const umidade = entrada.question("Informe a umidade do ar: ")


sensor.checagemTemperatura(Number(temperatura));
sensor.checagemUmidade(Number(umidade))

