USE sicooperative;

-- Inserindo registros na tabela associado
INSERT INTO associado (id, nome, sobrenome, idade, email) 
VALUES 
(1, 'Carlos', 'Silva', 35, 'carlos.silva@email.com'),
(2, 'Mariana', 'Oliveira', 29, 'mariana.oliveira@email.com'),
(3, 'João', 'Pereira', 40, 'joao.pereira@email.com'),
(4, 'Ana', 'Martins', 32, 'ana.martins@email.com'),
(5, 'Pedro', 'Souza', 45, 'pedro.souza@email.com'),
(6, 'Juliana', 'Ferreira', 28, 'juliana.ferreira@email.com'),
(7, 'Ricardo', 'Almeida', 50, 'ricardo.almeida@email.com'),
(8, 'Fernanda', 'Lima', 31, 'fernanda.lima@email.com'),
(9, 'Gabriel', 'Ribeiro', 27, 'gabriel.ribeiro@email.com'),
(10, 'Larissa', 'Gomes', 36, 'larissa.gomes@email.com'),
(11, 'Lucas', 'Rodrigues', 33, 'lucas.rodrigues@email.com'),
(12, 'Tatiane', 'Barbosa', 30, 'tatiane.barbosa@email.com'),
(13, 'Fábio', 'Cavalcante', 42, 'fabio.cavalcante@email.com'),
(14, 'Beatriz', 'Mendes', 29, 'beatriz.mendes@email.com'),
(15, 'Eduardo', 'Vieira', 48, 'eduardo.vieira@email.com'),
(16, 'Priscila', 'Monteiro', 34, 'priscila.monteiro@email.com'),
(17, 'Gustavo', 'Teixeira', 39, 'gustavo.teixeira@email.com'),
(18, 'Aline', 'Carvalho', 26, 'aline.carvalho@email.com'),
(19, 'Vinícius', 'Santos', 37, 'vinicius.santos@email.com'),
(20, 'Camila', 'Costa', 25, 'camila.costa@email.com');

-- Inserindo registros na tabela conta
INSERT INTO conta (id, tipo, data_criacao, id_associado) 
VALUES 
(1, 'Corrente', '2024-03-01 10:00:00', 1),
(2, 'Poupança', '2024-03-02 11:00:00', 2),
(3, 'Corrente', '2024-03-03 12:00:00', 3),
(4, 'Corrente', '2024-03-04 13:00:00', 4),
(5, 'Poupança', '2024-03-05 14:00:00', 5),
(6, 'Corrente', '2024-03-06 15:00:00', 6),
(7, 'Poupança', '2024-03-07 16:00:00', 7),
(8, 'Corrente', '2024-03-08 17:00:00', 8),
(9, 'Corrente', '2024-03-09 18:00:00', 9),
(10, 'Poupança', '2024-03-10 19:00:00', 10),
(11, 'Corrente', '2024-03-11 20:00:00', 11),
(12, 'Poupança', '2024-03-12 21:00:00', 12),
(13, 'Corrente', '2024-03-13 22:00:00', 13),
(14, 'Poupança', '2024-03-14 23:00:00', 14),
(15, 'Corrente', '2024-03-15 08:00:00', 15),
(16, 'Corrente', '2024-03-16 09:00:00', 16),
(17, 'Poupança', '2024-03-17 10:00:00', 17),
(18, 'Corrente', '2024-03-18 11:00:00', 18),
(19, 'Poupança', '2024-03-19 12:00:00', 19),
(20, 'Corrente', '2024-03-20 13:00:00', 20);

-- Inserindo registros na tabela cartao
INSERT INTO cartao (id, num_cartao, nom_impresso, id_conta, id_associado) 
VALUES 
(1, 12345, 'Carlos Silva', 1, 1),
(2, 98765, 'Mariana Oliveira', 2, 2),
(3, 56789, 'João Pereira', 3, 3),
(4, 34567, 'Ana Martins', 4, 4),
(5, 23456, 'Pedro Souza', 5, 5),
(6, 78901, 'Juliana Ferreira', 6, 6),
(7, 90123, 'Ricardo Almeida', 7, 7),
(8, 67890, 'Fernanda Lima', 8, 8),
(9, 45678, 'Gabriel Ribeiro', 9, 9),
(10, 56788, 'Larissa Gomes', 10, 10),
(11, 12378, 'Lucas Rodrigues', 11, 11),
(12, 23458, 'Tatiane Barbosa', 12, 12),
(13, 34565, 'Fábio Cavalcante', 13, 13),
(14, 45679, 'Beatriz Mendes', 14, 14),
(15, 56790, 'Eduardo Vieira', 15, 15),
(16, 67891, 'Priscila Monteiro', 16, 16),
(17, 78912, 'Gustavo Teixeira', 17, 17),
(18, 89023, 'Aline Carvalho', 18, 18),
(19, 90124, 'Vinícius Santos', 19, 19),
(20, 12386, 'Camila Costa', 20, 20);

-- Inserindo registros na tabela movimento
INSERT INTO movimento (id, vir_transacao, des_transacao, data_movimento, id_cartao) 
VALUES 
(1, 150.75, 'Compra Supermercado', '2024-03-05 14:00:00', 1),
(2, 200.00, 'Pagamento Boleto', '2024-03-06 15:45:00', 2),
(3, 50.99, 'Café e lanche', '2024-03-07 10:30:00', 3),
(4, 300.00, 'Transferência PIX', '2024-03-08 12:00:00', 4),
(5, 99.90, 'Assinatura Streaming', '2024-03-09 18:15:00', 5),
(6, 120.50, 'Posto de Gasolina', '2024-03-10 22:00:00', 6),
(7, 450.75, 'Pagamento Fatura', '2024-03-11 08:00:00', 7),
(8, 35.00, 'Academia Mensalidade', '2024-03-12 09:30:00', 8),
(9, 75.25, 'Livraria', '2024-03-13 16:45:00', 9),
(10, 560.80, 'Compra Online', '2024-03-14 20:00:00', 10),
(11, 180.25, 'Supermercado', '2024-03-15 13:00:00', 11),
(12, 90.00, 'Restaurante', '2024-03-16 15:00:00', 12),
(13, 350.40, 'Aluguel', '2024-03-17 18:30:00', 13),
(14, 500.00, 'Seguro Auto', '2024-03-18 11:00:00', 14),
(15, 29.90, 'Streaming', '2024-03-19 23:00:00', 15),
(16, 39.90, 'Viagem', '2024-03-19 23:00:00', 16),
(17, 59.90, 'Padaria', '2024-03-19 23:00:00', 17),
(18, 69.90, 'Lanchonete', '2024-03-19 23:00:00', 18),
(19, 89.90, 'Hotel', '2024-03-19 23:00:00', 19),
(20, 79.90, 'Teatro', '2024-03-19 23:00:00', 20);

-- Adicione mais transações se precisar completar 20!
