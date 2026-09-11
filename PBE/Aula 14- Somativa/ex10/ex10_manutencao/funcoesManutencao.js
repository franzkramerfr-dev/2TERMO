function calcularMaoDeObra(horas){
    horas * 80
}

function verificarGarantia(meses){
    if (meses <6){
        return 'EM GARANTIA'
    } else {
        return 'FORA DA GARANTIA'
    }
}

module.exports = {
    calcularMaoDeObra,
    verificarGarantia
}