// Apenas importei a biblioteca fs
const fs = require("fs"); 

// Disse ao meu programa 'Leia o "maquinas.json" (Banco de Dados que eu criei)
try{
    const dados = fs.readFileSync("maquinas.json", "utf-8");

//Agora eu determino ao meu programa, receber as informações como uma array
//Minha array agora se chama 'maquinas' e dentro do () eu coloquei a váriavel que eu determinei para ler o bcd (dados)
const maquinas = JSON.parse(dados);

//=============================================================================================================================================

//Agora utilizamos o .filter() para percorrer todas as máquinas que estão na array e analisar a condição que determinei abaixo
//Criei uma váriavel maquinasEmPerigo para buscar em "maquinas" os dados e retornar para mim a informação que eu precisava com base na condição que criei dentro da função no .filter()
//Perceba que o filter analisa o dado horasUso que pedi para ele perguntar e ele me volta sendo true ou false

const maquinasEmPerigo = maquinas.filter(function(maquinas){
    return maquinas.horasUso >1000;
});

//=============================================================================================================================================

//Agora para exibir os nomes das maquinas no terminal, eu crio uma função dentro do .forEach() que serve para eu determinar que cada coisa dentro da lista vai ter uma ação.
//Basicamente após isso eu só chamo uma função dentro do .forEach() para exibir as máquinas (console.log)

console.log("\n--- Máquinas com uso acima de 1000 horas ---");
console.log(maquinasEmPerigo);

maquinasEmPerigo.forEach(function(maquinas){
    console.log(maquinas.nome);
})

//=============================================================================================================

//Agora eu crio a lista filtrada de manutencao_urgente.JSON em outro arquivo para aquelas máquinas que estão com uso acima de 1000 horas

//writeFileSync() é uma função que serve para criar um arquivo e escrever dentro dele, no caso eu criei o arquivo manutencao_urgente.json e dentro dele eu escrevi a lista de máquinas que estão com uso acima de 1000 horas, ou seja, a lista filtrada.

//JSON.stringify() é uma função que serve para transformar um objeto em uma string, ou seja, eu transformei a lista de máquinas em uma string para poder escrever dentro do arquivo manutencao_urgente.json

//O null é para não alterar a estrutura do objeto e o 2 é para dar uma identação de 2 espaços para facilitar a leitura do arquivo

//O utf-8 é para garantir que o arquivo seja escrito com a codificação correta, evitando problemas com caracteres especiais.


console.log("✅ Arquivo manutencao_urgente.json criado com sucesso!");
}catch (erro) {
    console.log("❌ Erro ao acessar o banco de dados: " +erro.message);
}
