const input = require ('readline-sync');


console.log("--- SENSOR DE MEDICAO ---")

const temp = input.questionFloat('Informe a temperatura atual do forno: ');

if(temp <=60){
    console.log(`Temperatura Atual: ${temp}°C`, '\nStatus: NORMAL');
} else if (temp <=80) {
   console.log(`Temperatura Atual: ${temp}°C`, '\nStatus: ATENCAO')
} else {
    console.log(`Temperatura Atual: ${temp}°C`, '\nStatus: CRITICA')
}