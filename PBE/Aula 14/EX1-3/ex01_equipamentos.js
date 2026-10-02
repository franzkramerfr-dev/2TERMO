const fs = require("fs")
const equipamentos = [
    {
      id: 1,
      nome: "Britadeira",
      setor: "08-A",
      operacional: true,
    },
    {
      id: 2,
      nome: "Martelo",
      setor: "09-B",
      operacional: true,
    },
    {
      id: 3,
      nome: "Furadeira",
      setor: "2-B",
      operacional: true,
    }
];

 

const equipamentosJSON = JSON.stringify(equipamentos, null, 2);

fs.writeFileSync('equipamentos.json', equipamentosJSON, 'utf-8')

console.log('Ficheiro criado com sucesso')