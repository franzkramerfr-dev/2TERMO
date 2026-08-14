const entrada = require('readline-sync');
//Criando a "maquina" de calcular media

function calcularMedia (numero1, numero2) {
    return (numero1 + numero2) / 2;
}
//Usando a maquina
const numero1 = entrada.questionInt("Digite o primeiro valor: ");
const numero2 = entrada.questionInt("Digite o segundo valor: ");

const resultado = calcularMedia(numero1, numero2);
console.log(`A media calculada foi: ${resultado}`);
