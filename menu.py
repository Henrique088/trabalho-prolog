from perguntas import *


def menuprinc():
    opcao = int(input('''
              Escolha uma pergunta
    1 - O produto X foi comprado?
    2 - Qual foi a quantidade total comprada de um produto X?
    3 - Qual foi o valor total comprada de um produto X?
    4 - O que foi comprado na data X?
    5 - Qual o total de compras em uma loja X?
    6 - Qual o produto mais comprado?
    0 - Fechar Menu 
    Escolha:  '''))
    if opcao == 1:
        primeiraPergunta()
    elif opcao == 2:
        segundaPergunta()
    elif opcao == 3:
        terceiraPergunta()
    elif opcao == 4:
        quartaPergunta()
    elif opcao == 5:
        quintaPergunta()
    elif opcao == 6:
        sextaPergunta()
    elif opcao == 0:
        exit()
    else:
        print("Este número não está nas alternativas, tente novamente .\n")
        menuprinc()