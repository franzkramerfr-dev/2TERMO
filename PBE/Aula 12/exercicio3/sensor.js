function checagemTemperatura (valorTemperatura){

    if (valorTemperatura >40){
        console.log("ALERTA: Caldeira Superaquecida")
    } else {
        console.log("Temperatura dentro do padrão.")
    }
        
}

function checagemUmidade (valorUmidade) {

    if (valorUmidade <20){
        console.log("ALERTA: Ar muito seco")
    } else{
        console.log("Umidade dentro do padrão.")
    }
}


module.exports = {
    checagemTemperatura,
    checagemUmidade
}