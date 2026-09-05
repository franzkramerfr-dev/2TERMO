const readline = require("readline-sync");

const nome = readline.question("Digite o nome do aluno: ");
 const disciplina = readline.question("Digite a disciplina: ");

const nota1 = Number(readline.question("Digite a primeira nota: "));
 const nota2 = Number(readline.question("Digite a segunda nota: "));

const faltas = Number(readline.question("Digite a quantidade de faltas: ")); 
const media = (nota1 + nota2) / 2;

const nome_turmma = readline.question("Digite o nome da turma: ");
let idade = Number(readline.question("Digite a idade do aluno: "));
const escola = readline.question("Digite o nome da escola: ");
const periodo = readline.question("Digite o período (matutino, vespertino ou noturno): ");
let ano_letivo = Number(readline.question("Digite o ano letivo: "));
const cidade = readline.question("Digite a cidade: ");
const carga_horaria = Number(readline.question("Digite a carga horária: "));





console.log("\n--- RELATÓRIO DO ALUNO ---"); 
console.log("Aluno:", nome); 
console.log("Disciplina:", disciplina); 
console.log("Nota 1:", nota1);
console.log("Nota 2:", nota2); 
console.log("Média:", media); 
console.log("Faltas:", faltas);
console.log("Turma:", nome_turmma);
console.log("Idade:", idade);
console.log("Escola:", escola);
console.log("Período:", periodo);
console.log("Ano Letivo:", ano_letivo);
console.log("Cidade:", cidade);
console.log("Carga Horária:", carga_horaria);
