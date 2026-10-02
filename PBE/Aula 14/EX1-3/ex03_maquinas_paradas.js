const fs = require('fs')
const dados = fs.readFileSync("equipamentos.json", "utf-8");

const equipamentos = JSON.parse(dados);

const operacionalFalse = equipamentos.filter(function (equipamento) {
    return equipamento.operacional === false
});


console.log("\n--- Equipamentos Parados ---");
console.log(operacionalFalse);

operacionalFalse.forEach(function (equipamento) {
    console.log(equipamento.nome);
    console.log("Total de equipamentos parados: ", operacionalFalse.length)
  });