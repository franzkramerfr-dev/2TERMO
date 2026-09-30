const entrada = require("readline-sync");

const materiais = [];

for (let i = 1; i <= 4; i++) {
  const nome = entrada.question(`Digite o nome do material ${i}: `);

  const qtd = entrada.questionInt(`Digite a quantidade do material ${i}`);

  const estoqueMinimo = entrada.questionInt(
    `Informe o estoque minimo do material ${i}: `,
  );

  materiais.push(nome, qtd, estoqueMinimo);
}

console.log("--- LISTA DE MATERIAS ---");

for (let i = 0; i < materiais.length; i++) {
  const material = materiais[i];
  let situacao;
  if (material.qtd < material.estoqueMinimo) {
    situacao = "REPOR ESTOQUE";
  } else {
    situacao = "ESTOQUE OK";
  }
  console.log(`Material: ${material.nome}`);
  console.log(`Quantidade: ${material.qtd}`);
  console.log(`Estoque minimo: ${material.estoqueMinimo}`);
  console.log(`Situacao: ${situacao}`);
}
