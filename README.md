<h1 align="center">Trabalho Prolog </h1>
<p align="center">
Trabalho realizado em Prolog para a disciplina de paradigmas
</p>
<p align="center" >
<img src="http://img.shields.io/static/v1?label=STATUS&message=CONCLUIDO&color=RED&style=for-the-badge"/>
</p>

### Tópicos 

:small_blue_diamond: [Descrição do projeto](#descrição-do-projeto)

:small_blue_diamond: [Pré-requisitos](#pré-requisitos)

:small_blue_diamond: [Como rodar a aplicação](#como-rodar-a-aplicação-arrow_forward)


## Descrição do projeto
Documentação do projeto: https://github.com/Henrique088/trabalho-prolog/blob/master/Trabalho01-2022.pdf

Projeto realizado para a disciplina de paradigmas vizando o aprendizado e prática do paradigma imperativo. Usando para isso a linguagem de programação Prolog. 

Algumas características e conceitos-chave da linguagem de programação Prolog:

1. **Programação Lógica:** Prolog é uma linguagem de programação declarativa baseada em lógica de primeira ordem. Os programas em Prolog são compostos por um conjunto de fatos, regras e consultas, onde você declara o que é verdade (fatos) e como deduzir o que é verdade (regras).

2. **Regras e Fatos:** No Prolog, você define regras usando cláusulas e fatos usando afirmações. As regras são usadas para fazer inferências, enquanto os fatos representam informações estáticas. Por exemplo:
   
   ```prolog
   homem(socrates).
   mortal(X) :- homem(X).
   ```

   Neste exemplo, "socrates" é um fato, e a segunda linha define uma regra que afirma que qualquer ser humano é mortal.

3. **Unificação:** A unificação é um processo fundamental no Prolog que permite casar variáveis e valores para determinar se uma regra pode ser aplicada a uma consulta. Isso é central para a execução de consultas e inferência.

4. **Recursão:** O Prolog é bem adequado para lidar com recursão, o que significa que você pode definir regras que chamam a si mesmas. Isso é útil para resolver problemas complexos de maneira elegante.

5. **Árvores de Busca:** Muitos problemas em Prolog podem ser resolvidos por meio da construção de árvores de busca, onde o mecanismo de inferência tenta satisfazer as regras e fatos para alcançar um objetivo.

6. **Backtracking:** O Prolog usa backtracking para explorar todas as possíveis soluções para um problema. Se uma tentativa de inferência falhar, ele retrocede (backtrack) para tentar outra alternativa.

7. **Manipulação de Listas:** O Prolog tem suporte nativo para manipulação de listas, o que é útil para resolver muitos tipos de problemas.

8. **Aplicações:** Além de seu uso na pesquisa em inteligência artificial, o Prolog é usado em sistemas de especialistas, análise de linguagem natural, sistemas de inferência, sistemas de recomendação e muito mais.

9. **Linguagem Interpresa:** Prolog é uma linguagem interpretada, o que significa que você pode interagir diretamente com o ambiente de execução para consultar e modificar o conhecimento no sistema Prolog.

Prolog é uma linguagem poderosa e expressiva para resolver problemas que podem ser modelados em termos de regras lógicas e inferência. No entanto, sua abordagem declarativa e o uso extenso de backtracking podem levar a problemas de desempenho em problemas complexos, que podem exigir otimizações cuidadosas.

## Pré requisitos

Ter o python instalado em sua máquina. No meu projeto foi usado o python3

Instalar as bibliotecas: 

PySwip: é uma ponte Python e SWI-Prolog que permite consultar em Prolog usando Python.

```
pip install pyswip

```

Openpyxl: Usado para leitura e manipulação do Excel

```
pip install openpyxl

```

## Como rodar a aplicação :arrow_forward:


No terminal, clone o projeto: 

```
git clone https:https://github.com/Henrique088/trabalho-prolog.git
```

Depois abra o terminal dentro da pasta do arquivo e digite o comando: 

```
python3 main.py

```
