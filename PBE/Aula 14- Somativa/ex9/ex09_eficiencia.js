const entrada = require ('readline-sync')


function calcularEficiencia(real,prevista){
    return (real / prevista) * 100;

}

function classificarEficiencia(percentual){
    if (percentual >= 90) {
        return 'META ATINGIDA';
    } else if (percentual >= 70) {
        return 'ATENÇÃO';
    } else {
        return 'ABAIXO DA META';
    }
}

const producaoPrevista = entrada.questionFloat('Digite a producao prevista: ');

const producaoReal = entrada.questionFloat('Digite a producao real: ');
const eficiencia = calcularEficiencia(producaoReal, producaoPrevista);
const classificacao = classificarEficiencia(eficiencia);

console.log(`Produção prevista: ${producaoPrevista}`);
console.log(`Produção real: ${producaoReal}`);
console.log(`Eficiência: ${eficiencia.toFixed(2)}%`);
console.log(`Classificação: ${classificacao}`);