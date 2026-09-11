const entrada = require('readline-sync');

// Buscando as ferramentas no arquivo funcoesOficina.js
// O './' significa "nesta mesma pasta"
const oficina = require('./funcoesOficina');

console.log(" === SISTEMA DE GESTÃO DE OFICINA ===");

const peca = entrada.questionFloat("Preco da peca: RS $ ");
const horas = entrada.questionInt("Horas de servico: ");
const tempoUso = entrada.questionInt("Meses desde o ultimo conserto: ");

//Usamos o nome 'oficina' (que damos no require) seguido do ponto .
const totalBruto = oficina.calcularOrcamento(peca, horas);
const statusGarantia = oficina.verificarGarantia(tempoUso);
const totalComDesconto = oficina.aplicarDesconto(totalBruto)

console.log("\n--- RELATORIO FINAL ---");
console.log(`Orçamento sem desconto: R$ ${totalBruto.toFixed(2)}`);
console.log(`Orçamento com desconto (5%): R$ ${totalComDesconto.toFixed(2)}`);
console.log(`Status do Veiculo: ${statusGarantia}`);
