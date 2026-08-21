// Desafio 4: Catálogo de Filmes (Objetos e Arrays)
// Objetivo: Manipular listas de objetos e acessar suas propriedades.
// Enunciado: Crie um Array de Objetos chamado cinema. Cada
// objeto deve representar
// um filme e ter as propriedades: titulo e classificacao (idade
// mínima).
// Cadastre 3 filmes manualmente no código. Depois, peça a idade
// do usuário no terminal e use um loop para mostrar apenas os
// títulos dos filmes que ele tem idade para assistir.

const entrada = ('readline-sync')

const cinema = [
    {titulo: "Dumbo", classificacao: 0},
    {titulo: "Vingadores", classificacao: 12},
    {titulo: "O Exorcista", classificacao: 18}
];
    const idadeUser = 14;
    for (let i = 0; i < cinema.length; i++) {
        if (idadeUser >= cinema[i].classificacao) {
            console.log(`O usuário pode assistir o filme: ${cinema[i].titulo}`)
        } else {
            console.log(`O usuário não pode assistir o filme: ${cinema[i].titulo}`)
        }
    }
    
