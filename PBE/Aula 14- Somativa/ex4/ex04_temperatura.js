const entrada = require('readline-sync');

const temp = entrada.questionFloat("Informe a temperatura atual da maquina: ")

if (temp <60) {
    console.log(`Temperatura atual: ${temp} | situacao: NORMAL`)
}
else if (temp >=61 && temp <=80 ) {
    console.log(`Temperatura atual ${temp} | situacao ATENCAO`)
}
else {
    console.log(`Temperatura atual ${temp} | situacao CRITICA`)
}
