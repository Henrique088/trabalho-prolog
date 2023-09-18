%regras

% O produto X foi comprado? Por exemplo: compramos(‘tijolo’). -> true

produto_comprado(Produto) :- gasto(_, Produto, _, _, _, _, _).


% Função auxiliar para fazer a soma através de lista.
soma_quantidade([], 0).
soma_quantidade([Head | Tail], Soma) :- soma_quantidade(Tail, Soma2), Soma is Soma2 + Head.


% Qual foi a quantidade total comprada de um produto X? Por exemplo: quantos(‘tijolo’). -> 7000.


% Uso do findall para armazenar os resultados encontrados em uma lista e depois fazer a soma contida na mesma.
total_produto(Produto, Lista_Produtos, Quantidade_Final) :- findall(Quantidade, gasto(_, Produto, _, Quantidade, _, _, _), Lista_Produtos),
soma_quantidade(Lista_Produtos, Quantidade_Final).



% Qual foi o valor total comprado de um produto X? Por exemplo: quantos(‘tijolo’). -> 14000.


valor_total(Produto, Lista_Produtos, Valor_Final) :- findall(Preco_Total, gasto(_, Produto, _, _, _, _, Preco_Total), Lista_Produtos), soma_quantidade(Lista_Produtos, Valor_Final).


% O que foi comprado na data X? Por exemplo: comprado_em(’10-09-2021’).

data_comprado(Data, Produto_Retorno) :- gasto(Data, Produto_Retorno, _, _, _, _, _).


% Qual o total de compras em uma loja X? Por exemplo: compra_na_loja(‘Loja do zé’). -> 45000.00

compra_total_loja(Loja, Lista_Compras, Valor_Final) :- findall(Compras_Total, gasto(_, _, Loja, _, _, _, Compras_Total), Lista_Compras),
soma_quantidade(Lista_Compras, Valor_Final).

% Qual o produto mais comprado? Por exemplo: produto_mais_comprado(X). -> ‘cimento’

produto_mais_comprado(Produto, Lista_Quantidade, Quantidade_Final) :-
setof(Prods,gasto(_, Prods, _, _, _, _, _),LProds),
LProds=[Produto|_], findall(Compras_Total, gasto(_, Produto, _, Compras_Total, _, _, _),
Lista_Quantidade), soma_quantidade(Lista_Quantidade, Quantidade_Final).



gasto('01-09-2021','Cimento Campeao CPII','Loja do Zé',20,saco,28,560).
gasto('02-09-2021','Cimento Campeao CPII','Loja do Zé',50,saco,28,1400).
gasto('02-09-2021','Telha','Loja do Zé',35,unidade,10,350).
gasto('02-09-2021','Janela','Loja do Zé',5,unidade,200,1000).
gasto('03-09-2021','Porta','Loja do Zé',1,unidade,500,500).
gasto('03-09-2021','Areia','Loja do Zé',78,saco,15,1170).
gasto('04-09-2021','Tinta Suvinil 18L','Telhanorte',2,lata,630,1260).
gasto('04-09-2021','Madeira','Telhanorte',10,unidade,200,2000).
gasto('04-09-2021','Cimento Campeao CPII','Telhanorte',15,saco,28,420).
gasto('05-09-2021','Cimento Campeao CPII','Telhanorte',20,saco,28,560).
gasto('05-09-2021','Areia','Telhanorte',20,saco,12,240).
gasto('06-09-2021','Gesso','Telhanorte',10,saco,35,350).
gasto('06-09-2021','Madeira','Telhanorte',10,unidade,200,2000).
gasto('06-09-2021','Cimento Campeao CPII','Telhanorte',15,saco,28,420).
gasto('07-09-2021','Gesso','Telhanorte',15,saco,35,525).
gasto('07-09-2021','Areia','Telhanorte',20,saco,12,240).
gasto('07-09-2021','Piso Laminado','Leroy Merlin',27,saco,45,1215).
gasto('07-09-2021','Argamassa','Leroy Merlin',20,saco,15,300).
gasto('08-09-2021','Piso Laminado','Leroy Merlin',13,saco,45,585).
gasto('08-09-2021','Argamassa','Leroy Merlin',10,saco,15,150).
gasto('01-09-2021','Cimento Campeao CPII','Loja do Zé',20,saco,28,560).
gasto('02-09-2021','Cimento Campeao CPII','Loja do Zé',50,saco,28,1400).
gasto('02-09-2021','Telha','Loja do Zé',35,unidade,10,350).
gasto('02-09-2021','Janela','Loja do Zé',5,unidade,200,1000).
gasto('03-09-2021','Porta','Loja do Zé',1,unidade,500,500).
gasto('03-09-2021','Areia','Loja do Zé',78,saco,15,1170).
gasto('04-09-2021','Tinta Suvinil 18L','Telhanorte',2,lata,630,1260).
gasto('04-09-2021','Madeira','Telhanorte',10,unidade,200,2000).
gasto('04-09-2021','Cimento Campeao CPII','Telhanorte',15,saco,28,420).
gasto('05-09-2021','Cimento Campeao CPII','Telhanorte',20,saco,28,560).
gasto('05-09-2021','Areia','Telhanorte',20,saco,12,240).
gasto('06-09-2021','Gesso','Telhanorte',10,saco,35,350).
gasto('06-09-2021','Madeira','Telhanorte',10,unidade,200,2000).
gasto('06-09-2021','Cimento Campeao CPII','Telhanorte',15,saco,28,420).
gasto('07-09-2021','Gesso','Telhanorte',15,saco,35,525).
gasto('07-09-2021','Areia','Telhanorte',20,saco,12,240).
gasto('07-09-2021','Piso Laminado','Leroy Merlin',27,saco,45,1215).
gasto('07-09-2021','Argamassa','Leroy Merlin',20,saco,15,300).
gasto('08-09-2021','Piso Laminado','Leroy Merlin',13,saco,45,585).
gasto('08-09-2021','Argamassa','Leroy Merlin',10,saco,15,150).
gasto('01-09-2021','Cimento Campeao CPII','Loja do Zé',20,saco,28,560).
gasto('02-09-2021','Cimento Campeao CPII','Loja do Zé',50,saco,28,1400).
gasto('02-09-2021','Telha','Loja do Zé',35,unidade,10,350).
gasto('02-09-2021','Janela','Loja do Zé',5,unidade,200,1000).
gasto('03-09-2021','Porta','Loja do Zé',1,unidade,500,500).
gasto('03-09-2021','Areia','Loja do Zé',78,saco,15,1170).
gasto('04-09-2021','Tinta Suvinil 18L','Telhanorte',2,lata,630,1260).
gasto('04-09-2021','Madeira','Telhanorte',10,unidade,200,2000).
gasto('04-09-2021','Cimento Campeao CPII','Telhanorte',15,saco,28,420).
gasto('05-09-2021','Cimento Campeao CPII','Telhanorte',20,saco,28,560).
gasto('05-09-2021','Areia','Telhanorte',20,saco,12,240).
gasto('06-09-2021','Gesso','Telhanorte',10,saco,35,350).
gasto('06-09-2021','Madeira','Telhanorte',10,unidade,200,2000).
gasto('06-09-2021','Cimento Campeao CPII','Telhanorte',15,saco,28,420).
gasto('07-09-2021','Gesso','Telhanorte',15,saco,35,525).
gasto('07-09-2021','Areia','Telhanorte',20,saco,12,240).
gasto('07-09-2021','Piso Laminado','Leroy Merlin',27,saco,45,1215).
gasto('07-09-2021','Argamassa','Leroy Merlin',20,saco,15,300).
gasto('08-09-2021','Piso Laminado','Leroy Merlin',13,saco,45,585).
gasto('08-09-2021','Argamassa','Leroy Merlin',10,saco,15,150).
