const entrada = require('readline-sync')

console.log("===MÚLTIPLAS CONDIÇÕES===")

const idade = entrada.questionInt("\nInforme sua idade:")

if (idade >=5 && idade <= 10){
    console.log("Você está matriculado na turma Infantil")
} 
else if (idade >=11 && idade <17) {
    console.log("Você está matriculado na turma Juvenil")
}
else if (idade >=18 && idade <60) {
    console.log("Você está matriculado na turma Adulto")
} else {
    console.log("Você está matriculado na turma Sênior")
}

