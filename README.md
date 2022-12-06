# Bem vindo ao desafio de SQL da Refera!

O objetivo desse desafio: avaliar o conhecimento básico em SQL, banco de dados e entender mais quais as boas práticas você segue para construção de código.

Importânte ressaltar que esse desafio é válido para analistas, engenheiros e cientistas de dados. Acreditamos que mesmo tendo diferenças entre as áreas, o SQL deve ser um pilar forte para todos.

## Os dados podem ser carregados de três formas diferentes(em ordem do mais recomendado pro menos recomendado):
1. Usando docker. Clonando e rodando: ```docker compose up```
2. .tar: [Link](https://drive.google.com/file/d/1MjoGGK9WUek_QEwEqBFPjAYZNcCe7cGn/view?usp=sharing)
3. csv: [Link](https://drive.google.com/file/d/1NbCcMPwUBAXiC8rIxz_oxFtMHE4hR39L/view?usp=sharing)


[Modelo de dados](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/)

## Comentário sobre o desafio:
Antes de começarmos a responder as perguntas é preciso primeiro analisar e visualizar a estrutura do banco de dados:

![estrutura_banco_de_dados](https://github.com/orickprazeres/refera-data-challenge/blob/main/Captures/dvdrental%20-%20public.png)

### Pergunta 01: Qual foi os top 2 filmes mais alugados de todos os tempos?
**Saída esperada:** 2 colunas(título do filme, quantidade) e 2 linhas.

**Comentário:** <br>
Na primeira questão tivemos como desafio primeiro realizar um select de acordo com os filmes mais vistos de acordo com o dataset e assim dentro desse select obtermos apenas os 2 primeiros filmes da lista, assim foi utilizando as tabelas `rental`, `inventory` e `film` com o intuito de realizar o `count` e um `group by` através da coluna `film_id`, que estão vinculadas de acordo com estrutura das tabelas como foi dito anteriormente.

**Estrutura:** <br>
![estrutura_1_pergunta](https://github.com/orickprazeres/refera-data-challenge/blob/main/Captures/dvdrental%20-%20public%20-%20inventory.png)

**Respota:** <br>
[1_answer_ricardo_prazeres.sql](https://github.com/orickprazeres/refera-data-challenge/blob/main/respostas/1_answer_ricardo_prazeres.sql)

**Resultado:** <br>
![1_answer_ricardo_prazeres.sql](https://github.com/orickprazeres/refera-data-challenge/blob/main/Captures/1.png)

### Pergunta 02: No top 16 filmes mais alugados, qual o nome completo do ator mais presente nesses filmes?
**Saída esperada:** 1 coluna e 1 linha com o nome completo.

**Comentário:** <br>
Para essa pergunta foi utilizado a estrutura da primeira pergunta, e realizando um `left Join` com as tabelas `film_actor` e `actor`. Foi realizando um `Count` e `group by` na coluna `actor_id` para obtermos o número de vezes que algum ator é repetido e assim realizamos uma subquery para selecionar o `nome_completo` do ator mais repetido.

**Estrutura:** <br>
![estrutura_2_pergunta](https://github.com/orickprazeres/refera-data-challenge/blob/main/Captures/dvdrental%20-%20public%20-%20film_actor.png)

**Respota:** <br>
 [2_answer_ricardo_prazeres.sql](https://github.com/orickprazeres/refera-data-challenge/blob/main/respostas/2_answer_ricardo_prazeres.sql)

**Resultado:** <br>
![2_answer_ricardo_prazeres.sql](https://github.com/orickprazeres/refera-data-challenge/blob/main/Captures/2.png)

### Pergunta 03: Quantos clientes novos a empresa adquiriu por mês?
**Observação:** Considere a data de início de um novo cliente como sendo a data do primeiro filme que esse cliente alugou. <br>
**Saída esperada:** 2 colunas ( mês_entrada_cliente:date | quantidade_de_clientes:int ) e 3 linhas.

**Comentário:** <br>
Ao analisar o que se pediu para a pergunta foi visto que tudo que precisávamos estava na tabela `rental` onde obtemos o mês de entrada dos clientes e realizamos um `count `  e um `group by` para assim receber o numero de novos clientes. De acordo com o que foi pedido na estrutura final a coluna `mês_entrada_cliente` ficou como o type de *date* por isso ele fica nesse formato de ‘YYYY-MM-DD’.

**Estrutura:** <br>
![estrutura_2_pergunta](https://github.com/orickprazeres/refera-data-challenge/blob/main/Captures/dvdrental%20-%20public%20-%20rental.png)

**Respota:** <br>
 [3_answer_ricardo_prazeres.sql](https://github.com/orickprazeres/refera-data-challenge/blob/main/respostas/3_answer_ricardo_prazeres.sql)

**Resultado:** <br>
![3_answer_ricardo_prazeres.sql](https://github.com/orickprazeres/refera-data-challenge/blob/main/Captures/3.png)


