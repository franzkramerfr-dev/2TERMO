const fs = require ('fs')
const dados = fs.readFileSync("equipamentos.json", "utf-8");


const equipamentos = JSON.parse(dados);

for (let i = 0; i < equipamentos.length; i++) {
    console.log(`\n--- Equipamento ${i+1} ---`)
    console.log(`Código: ${equipamentos[i].id}`)
    console.log(`Equipamento: ${equipamentos[i].nome}`)
    console.log(`Setor: ${equipamentos[i].setor}`)


    if (equipamentos.operacional === false) {
        console.log("Status: PARADA")
    } else {
        console.log("Status: OPERACIONAL")
    }
}
