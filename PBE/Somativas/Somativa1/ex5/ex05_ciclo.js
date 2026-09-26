const entrada = require('readline-sync');


for (let i = 0; i <10; i++){
    let qtdPeca = entrada.questionInt(`Informe quantas pecas a maquina produziu no ciclo ${i + 1}: `)
    
    console.log("Producao Acumulada:",  qtdPeca * 10 )
}