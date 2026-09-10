function calcularTotal(preco, qtd) {
    return preco * qtd
};

function gerarCupom(nome,valor) {
    return console.log(`Cliente: ${nome} - Total:R$ ${valor}`)
}

module.exports = {
    calcularTotal,
    gerarCupom
}