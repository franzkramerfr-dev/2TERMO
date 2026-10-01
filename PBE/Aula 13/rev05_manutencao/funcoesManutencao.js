function calcularMaoDeObra (horas, valorPorHora) {
    const valorPorHora = 80
    return horas * valorPorHora
}

function calcularTotal(valorPecas, horas) {
    return valorPecas + calcularMaoDeObra(horas)
}

function verificarGarantia(meses) {
    let garantia;

    if (meses <= 6) {
        garantia = "EM GARANTIA"
    } else { 
        garantia = "FORA DA GARANTIA"
    }
}

module.exports = (
    calcularMaoDeObra,
    calcularTotal,
    verificarGarantia
) 