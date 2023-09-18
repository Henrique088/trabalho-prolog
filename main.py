from pyswip import Prolog
from menu import *
from openpyxl import Workbook, load_workbook

arquivo = load_workbook('./obras.xlsx')
atual = arquivo.active

indice = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']

t = 0
n = 0
f = open('saidas.pl', 'at')
for campo in atual[indice[t]]:
    n += 1
    linha = campo.row

    if linha > 1:
        f.write('gasto(''\'{}\''',''\'{}\''',''\'{}\''',''{}'',''{}'',''{}'',''{}'').\n'
                .format(atual[f'B{n}'].value, atual[f'C{n}'].value, atual[f'D{n}']
                        .value, atual[f'E{n}'].value, atual[f'F{n}'].value, atual[f'G{n}']
                        .value, atual[f'H{n}'].value, atual[f'H{n}'].value))

f.close()

while True:
    try:
        menuprinc()
    except ValueError:
        print("Isso não é um número, tente novamente .\n")
