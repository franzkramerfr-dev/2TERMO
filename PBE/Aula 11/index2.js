const fs = require('fs');

const entrada = require('readline-sync');

try{
const dados = fs.readFileSync("funcionarios.json", "utf-8");

const funcionarios = JSON.parse(dados);

const id = Number(entrada.question("Digite o ID do funcionario: "));

const id_funcionario = funcionarios.find(function(funcionario){
    return funcionario.id === id;
});

if(id_funcionario){
    console.log("Funcionário encontrado: ", "\nFuncionário:", id_funcionario.nome, "\nID:", id_funcionario.id, "\nSetor:", id_funcionario.setor)
    const novo_setor = entrada.question("Digite o novo setor do funcionario: ");
    id_funcionario.setor = novo_setor;
    console.log("Setor atualizado com sucesso!")

    fs.writeFileSync("funcionarios.json", JSON.stringify(funcionarios, null, 2, "utf-8"));
} else {
    console.log("Acesso Negado: ID não encontrado.")
}
} catch (erro) {
    console.log("Erro ao acessar o banco de dados: " +erro.message);
}

