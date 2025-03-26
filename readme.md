# ETL com Python e MySQL

## Visão Geral
Este projeto implementa um processo de ETL (Extract, Transform, Load) utilizando Python para extrair dados de um banco de dados MySQL, transformá-los conforme regras especificadas no desafio técnico e exportá-los para um arquivo CSV em um diretório especificado pelo usuário.

## Tecnologias Utilizadas
- Python 
- MySQL
- Pandas
- MySQL Connector
- Visual Studio Code

## Estrutura do Banco de Dados
O banco de dados utilizado se chama **sicooperative** e contém as seguintes tabelas:

1. movimento (dados de transações financeiras)
2. cartao (dados dos cartões dos associados)
3. conta (informações sobre as contas bancárias)
4. associado (dados dos associados)

Para criar o banco de dados, é necessário configurar o MySQL e rodar os scripts de criação do banco de dados e depois o scrip de inserção de dados.
Primeiramente, é necessário rodar o script criar_banco_de_dados.sql para criar o banco de dados.
Em seguida, pode-se rodar o script inserir_dados.sql para popular as tabelas.

## Objetivo do ETL
O ETL faz a extração de diferentes campos dessas tabelas para gerar um flat file consolidado com os seguintes campos:
- nome_associado
- sobrenome_associado
- idade_associado
- vlr_transacao_movimento
- des_transacao_movimento
- data_movimento
- numero_cartao
- nome_impresso_cartao
- data_criacao_cartao
- tipo_conta
- data_criacao_conta

## Como Executar o ETL
### 1. Instalar as Dependências
Antes de executar o ETL, instale as bibliotecas necessárias:
```sh
pip install pandas mysql-connector-python
```

### 2. Configurar o Banco de Dados
Certifique-se de que o MySQL está instalado e rodando localmente. O script já considera que o banco sicooperative e as tabelas foram criadas previamente.

### 3. Executar o Script
No terminal, execute o script etl.py:
```sh
python etl.py
```

O programa solicitará o diretório onde o arquivo CSV deve ser salvo. Informe o caminho desejado.

## Estrutura do Projeto
```
/etl_python_project
│── etl.py               	 # Script principal do ETL
│── README.md            	 # Documentação do projeto
│── criar_banco_de_dados.sql # Lista de dependências
│── inserir_dados.sql	     # Lista de dependências
```

## Dificuldades encontradas
Este projeto inicialmente seria desenvolvido fazendo uso de Spark, porém encontrei inúmeros problemas na instalação e não foi possível resolver todos dentro do tempo previsto, conforme descrevo abaixo.
Tentei configurar no Windows, cheguei a instalar o Spark, mas houveram problemas de conflito e com o ambiente, principalmente com o hadoop, para o qual experimentei utilizar o pacote winutils.exe, mas sem sucesso.
Como segunda alternativa, baixei uma VM (Virtual Machine) para tentar simular o ambiente Linux, a Oracle Virtual Box e uma imagem do Ubuntu, porém o desempenho ficou muito ruim em meu computador.
Uma outra alternativa que estou desenvolvendo para realizar o mesmo ETL é um notebook no Databricks, mas não houve tempo para subir o banco de dados em um provedor cloud, além de estar usando a conta gratuita. 
Como alternativa para rodar localmente, fiz uso de Python e algumas de suas principais bibliotecas, tais como Pandas, para atingir o objetivo de gerar localmente o flat file com as informações consolidadas e extraídas do banco de dados por meio do processo de ETL.


## Considerações Finais
Este projeto serve como uma aplicação de integração entre Python e MySQL em processos de ETL. Ele pode ser expandido para incluir mais regras de transformação, validação de dados e integração com outros bancos de dados ou formatos de saída.

