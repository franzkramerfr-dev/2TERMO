const fs = require("fs");
const sensores = [
  {
    codigo: 1,
    tipo: "Temperatura",
    valor: 75,
    unidade: "°C",
    status: "Normal",
  },
  {
    codigo: 2,
    tipo: "Pressao",
    valor: 120,
    unidade: "PSI",
    status: "Alerta",
  },
  {
    codigo: 3,
    tipo: "Umidade",
    valor: 60,
    unidade: "%",
    status: "Normal",
  },
  {
    codigo: 4,
    tipo: "Velocidade",
    valor: 90,
    unidade: "km/h",
    status: "Normal",
  },
  {
    codigo: 5,
    tipo: "Temperatura",
    valor: 95,
    unidade: "°C",
    status: "Alerta",
  },
];

const dados = JSON.stringify(sensores, null, 2);


fs.writeFileSync("monitoramento.json", dados, 'utf-8');

console.log("Fichario criado com sucesso");
