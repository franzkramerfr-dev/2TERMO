// const fs = require("fs");

// const texto = fs.readFileSync("maquinas.json", "utf8");

// console.log(typeof texto);

// console.log(texto);

// Ao alterar o nome do arquivo para "arquivo-inexistente.json", o programa apresenta diversas mensagens de erro. Uma delas é "ERROR: ENOENT: no such file or directory, open [...] {errno: -4058, code: 'ENOENT', syscall: 'open', patch '[...]'}"

//---------------------------------------------------------------

// const fs = require("fs");

// const texto = fs.readFileSync("maquinas.json", "utf8");

// const maquinas = JSON.parse(texto);

// console.log(Array.isArray(maquinas));

// console.log(maquinas.length);

// console.log("Nome:",maquinas[2].nome,"\nSetor:",maquinas[2].setor);

//---------------------------------------------------------------

// const fs = require("fs");
// const texto = fs.readFileSync("maquinas.json", "utf8");
// const maquinas = JSON.parse(texto);
// maquinas.forEach((maquina, indice) => {
// console.log(`${indice + 1}. ${maquina.nome} - Setor: ${maquina.setor} - Status: ${maquina.status}`);
// });

//---------------------------------------------------------------

// const fs = require("fs");
// const texto = fs.readFileSync("maquinas.json", "utf8");
// const maquinas = JSON.parse(texto);
// maquinas.forEach((maquina, indice) => {
// console.log(`${indice + 1}. ${maquina.nome} - Setor: ${maquina.setor} - Status: ${maquina.status}`);
// });
// const procurada = maquinas.find(maquina => maquina.id ==="2");
// console.log(procurada);
// if (procurada !== undefined) {
// console.log(procurada.nome);
// } else {
// console.log("Máquina não encontrada.");
// }

// Ao buscar o ID 30 o programa apresenta uma mensagem dizendo que a máquina não foi encontrada
// Quando comparamos um valor INT com uma string, o valor INT (2) apresenta normalmente a máquina enquanto o valor em string ("2") tem como saída undefined e máquina não encontrada pois não são a mesma coisa.

//---------------------------------------------------------------

// const fs = require("fs");
// const texto = fs.readFileSync("maquinas.json", "utf8");
// const maquinas = JSON.parse(texto);
// maquinas.forEach((maquina, indice) => {
// console.log(`${indice + 1}. ${maquina.nome} - Setor: ${maquina.setor} - Status: ${maquina.status}`);
// });
// const procurada = maquinas.find(maquina => maquina.id ===2);
// console.log(procurada);
// if (procurada !== undefined) {
// console.log(procurada.nome);
// } else {
// console.log("Máquina não encontrada.");
// }
// const emManutencao = maquinas.filter(
// maquina => maquina.status === "Manutenção"
// );
// console.log(emManutencao.length);
// console.log(emManutencao);
// const paradas = maquinas.filter(maquina => maquina.status === "Parada");
// console.log(paradas); // []
// console.log(paradas.length); // 0

// const usinagem = maquinas.filter(maquina => maquina.setor === "Usinagem");
// console.log(usinagem); 
// console.log(usinagem.length); 

// O programa retorna 2 objetos inseridos no setor de Usinagem

// const montagem = maquinas.filter(maquina => maquina.setor === "Montagem");
// console.log(montagem); 
// console.log(montagem.length); 

// O programa retorna apenas 1 objeto inserido no setor de Montagem

// --------------------------------------------------------------

// Se a empresa precisar listar todas as máquinas com defeito, a melhor escolha seria o filter() pois se utilizasse o find() iria retornar apenas o primeiro item, já com o filter() o programa percorre o array e filtra apenas a condição determinada dentro dele, que nesse caso seria as máquinas com defeito (.filter( maquina => maquina.status === "Inativo"))

// --------------------------------------------------------------

// const fs = require("fs");
// try {
// const texto = fs.readFileSync("maquinas.json", "utf8");
// const maquinas = JSON.parse(texto);
// console.log(`Registros carregados: ${maquinas.length}`);
// } catch (erro) {
// console.log("Não foi possível carregar os dados.");
// console.log(erro.message);
// }

// -------------------------------------------------------------

//10. Desafios progressivos - sem gabarito
// DESAFIO A

// const fs = require ('fs');

// const texto = fs.readFileSync("maquinas.json", "utf-8");
// const maquinas = JSON.parse(texto);
// console.log(maquinas)

// DESAFIO B

// const fs = require('fs');
// const texto = fs.readFileSync('maquinas.json', 'utf-8');
// const maquinas = JSON.parse(texto);

// const busca = maquinas.find(maquina => maquina.id ===2);
// ;
// console.log(busca);
// if (busca !== undefined) {
// console.log(`ID: ${busca.id}, \nNome: ${busca.nome}, \nSetor: ${busca.setor}`);
// } else {
// console.log("Máquina não encontrada.");
// }

// DESAFIO C

// const fs = require ('fs');

// const texto = fs.readFileSync('maquinas.json', 'utf-8');
// const maquinas = JSON.parse(texto);
// const Usinagem = maquinas.filter(maquina => maquina.setor === "Usinagem");
// console.log(`Maquinas cadastradas no setor Usinagem: ${Usinagem.length}`); 
// console.log(Usinagem); 

// DESAFIO D

// const fs = require ('fs');

// const texto = fs.readFileSync('maquinas.json', "utf-8");
// const maquinas = JSON.parse(texto);

// function filtrarPorStatus() {
//     return maquinas.filter(maquina => maquina.status === "Ativa");
// }

// console.log("Status Maquinas Ativas:")
// console.log(filtrarPorStatus("Ativa"))

// DESAFIO E

// Os métodos que podemos utilizar nessa atividade são o filter() utilizado para retornar todos os itens de uma array, find() apenas o primeiro item que corresponde a condição que determinamos e o forEach() que serve para percorrer mais que um item de cada vez.