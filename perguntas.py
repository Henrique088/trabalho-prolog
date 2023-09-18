
from pyswip import Prolog

prolog = Prolog()  # instanciamos a classe
prolog.consult("saidas.pl")

def listaProdutos():
    # lista todos produtos
    for valor in prolog.query("produto_comprado(X)"):
        print("produto:", valor["X"])

# # Pergunta 1
def primeiraPergunta():
    X = input(" O produto X foi comprado? ?")
    result = bool(list(prolog.query("produto_comprado('" + X + "')")))
    print(result)

# # Pergunta 2
def segundaPergunta():
    X = input(" Qual foi a quantidade total comprada de um produto X?")
    quantidade = list(prolog.query("total_produto('" + X + "', _, Total)"))
    print(quantidade)

# # Pergunta 3
def terceiraPergunta():
    X = input(" Qual foi o valor total comprada de um produto X?")
    valorTotal = list(prolog.query("valor_total('" + X + "', _, Valor_Total)"))
    print(valorTotal)

# # Pergunta 4
def quartaPergunta():
    X = input(" O que foi comprado na data X? '10-09-2021'")
    comprasData = list(prolog.query("data_comprado('" + X + "', Produto)"))
    print(comprasData)

# Pergunta 5
def quintaPergunta():
    X = input("Qual o total de compras em uma loja X?")
    totalLoja = list(prolog.query("compra_total_loja('" + X + "', _, Total)"))
    print(totalLoja)

# Pergunta 6
def sextaPergunta():
    print("Qual o produto mais comprado?")
    maisComprado = list(prolog.query("produto_mais_comprado(Produto, _, Quantidade_Final)"))
    print(maisComprado)