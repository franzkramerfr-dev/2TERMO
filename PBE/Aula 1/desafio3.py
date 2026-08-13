# Desafio 3: Funções e Dicionários (O Desconto no Produto)
# Enunciado em Python: Crie um dicionário representando um produto: produto =
# {&quot;nome&quot;: &quot;Teclado Mecânico&quot;, &quot;preco&quot;: 200.0, &quot;estoque&quot;: 15}
# 1. Crie uma função chamada aplicar_desconto que receba o dicionário do
# produto
# e a porcentagem de desconto (ex: 10 para 10%).
# 2. A função deve atualizar o preço do produto dentro do dicionário e exibir a
# mensagem: &quot;O produto [NOME] agora custa R$ [NOVO_PRECO]!”

produto = {"nome": "Teclado Mecânico", "preco": 200.0, "estoque": 15, "categoria": "Perifericos"}

def aplicar_desconto(item, porcentagem):
    item["categoria"] = item["preco"]
    item["preco"] -= item["preco"] * (porcentagem / 100)
    print(f"O produto {item['nome']} agora custa R$ {item['preco']:.2f}!")

aplicar_desconto(produto, 10)
