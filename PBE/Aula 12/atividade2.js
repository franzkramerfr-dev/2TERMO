const fs = require('fs');

const maquinas = [
    {id:1, nome: "Torno CNC", horasUso: 1200},
    {id:2, nome: "Fresadora", horasUso: 800},
    {id:3, nome: "Prensa Hidraulica", horasUso: 1500},
    {id:4, nome: "Corte a Laser", horasUso: 500},
];

function salvarDados() {
    const dadosTexto = JSON.stringify(maquinas., null, 2);

    fs.writeFileSync('maquinas.json', dadosTexto, 'utf-8');
    console.log("✅ Dados salvos com sucesso no arquivo maquinas.json!");
}

salvarDados();

const dadosTexto = fs.readFileSync('manutencao_urgente.json', 'utf-8');
const maquinas = JSON.parse(dadosTexto);
    
function verMaquinas() {
console.log(`\n--- Maquinas com manutenção urgente (mais de 1000 horas de uso) ---`);

const verManutencaoMaquinas = produtos.filter(p => p.qtd > 1000);
console.log(verMaquinas);

verMaquinas()




