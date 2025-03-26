#drop database sicooperative;

-- Criar o banco de dados
CREATE DATABASE sicooperative;

-- Usar o banco de dados
USE sicooperative;

-- Criar a tabela associado
CREATE TABLE associado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    sobrenome VARCHAR(30),
    idade INT,
    email VARCHAR(50)
);

-- Criar a tabela conta
CREATE TABLE conta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(20),
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_associado INT
);

-- Criar a tabela cartao
CREATE TABLE cartao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    num_cartao INT,
    nom_impresso VARCHAR(100),
    id_conta INT,
    id_associado INT
);

-- Criar a tabela movimento
CREATE TABLE movimento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    vir_transacao DECIMAL(10,2),
    des_transacao VARCHAR(100),
    data_movimento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_cartao INT
);

