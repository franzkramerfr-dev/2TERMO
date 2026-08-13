const entrada = require('readline-sync');

console.log(" ===SISTEMA DE CONTROLE DE QUALIDADE - PESAGEM ===");

const pesos = [];
let somatotal = 0;

const qtdPecas = entrada.questionInt("Quantas pecas deseja avaliar?");

for (let i =0; i < qtdPecas; i++) {
    let peso = entrada.questionFloat(`Digite o peso da peça ${i + 1} (kg): `);

    peso.psuh(peso);
    somaTotal += peso;

} 

const media = somaTotal / qtdPecas;

console.log("\n--- RELATORIO DA AUDITORIA ---");
console.log(`Pesos registrados: [ ${pesos.join(" kg | ")} kg ]`);
console.log(`Media de peso do lote: ${media.toFixed(2)}kg`);

if (media >4.8 && media <= 5.2) {
    console.log("STATUS FINAL: ✅LOTE APROVADO!")
} else {
     console.log("STATUS FINAL: ❌LOTE REPROVADO (Fora do padrão!");
}
