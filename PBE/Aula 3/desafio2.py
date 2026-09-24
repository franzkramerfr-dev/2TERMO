# Desafio 2: Repetição e Listas (O Filtro de Pares)
# Enunciado em Python: Dado o seguinte código inicial com uma lista de
# números:
# numeros = [12, 5, 8, 21, 14, 3, 10, 7]
# Escreva um programa que:
# 1. Percorra a lista e crie uma nova lista contendo apenas os números pares.
# 2. Calcule e exiba a média desses números pares.
# - O que avalia no aluno: Laços de repetição (for), listas, método .append(),
# acúmulo de valores e o operador de resto de divisão %.

print("===Filtro de Pares===")
numeros = [12, 5, 8, 21, 14, 3, 10, 7]
pares = []


for numbers in numeros:
    if numbers % 2 == 0:
        pares.append(numbers)

if pares:
    media = sum(pares) / len(pares)
    print(f"Números pares: {pares}")
    print(f"Média dos números pares: {media:.2f}")
else:
    print("Não há números pares na lista.")
