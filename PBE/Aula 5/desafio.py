while True:
    print("===Aluguel de Carros===")

    numero_de_dias = int(input("Informe a quantidade de dias em que o carro foi alugado:\n"))
    km_rodados = float(input("Informe a kilometragem rodada:\n"))

    valor_dias = numero_de_dias * 90
    

    if km_rodados > 100:
        valor_total = (valor_dias + km_rodados) * 0.15
        print(f"Valor total R$ {valor_total:.2f}")
        

    else:
        valor_total = (valor_dias + km_rodados) * 0.20
        print(f"Valor total R$ {valor_total:.2f}")


    
    