insert into cliente (nome, CPF, CNPJ, telefone, email, Rua, Nr, Bairro, Cidade, UF) values
    ('João da Silva', '12345678901', null, '11999999999', 'joao@example.com', 'Rua das Flores', '123', 'Centro', 'São Paulo', 'SP'),
    ('Maria Souza', '98765432101', null, '11888888888', 'maria@example.com', 'Avenida dos Anjos', '456', 'Vila Feliz', 'Rio de Janeiro', 'RJ'),
    ('Fernando Oliveira', '56789012345', null, '11777777777', 'fernando@example.com', 'Rua das Palmeiras', '789', 'Jardim Primavera', 'Belo Horizonte', 'MG'),
    ('Ana Santos', '76543210987', null, '11666666666', 'ana@example.com', 'Rua dos Pássaros', '987', 'Parque das Flores', 'Curitiba', 'PR'),
    ('Carlos Pereira', '23456789012', null, '11555555555', 'carlos@example.com', 'Avenida Central', '567', 'Centro', 'Porto Alegre', 'RS'),
    ('Lúcia Ferreira', '89012345678', null, '11444444444', 'lucia@example.com', 'Alameda das Estrelas', '432', 'Vila Estrela', 'Salvador', 'BA'),
    ('Rafael Costa', '67890123456', null, '11333333333', 'rafael@example.com', 'Rua das Montanhas', '345', 'Jardim Vista Linda', 'Campinas', 'SP'),
    ('Sandra Almeida', '34567890123', null, '11222222222', 'sandra@example.com', 'Avenida da Praia', '876', 'Praia Azul', 'Fortaleza', 'CE'),
    ('Pedro Mendes', '90123456789', null, '11987654321', 'pedro@example.com', 'Rua dos Sonhos', '234', 'Sonho Real', 'Manaus', 'AM'),
    ('Laura Lima', '45678901234', null, '11876543210', 'laura@example.com', 'Alameda das Águas', '654', 'Águas Claras', 'Brasília', 'DF'),
    ('Padaria SP', null, '12345678901234', '1122334455', 'padariasp@gmail.com', 'Rua Comercial', '500', 'Centro', 'São Paulo', 'SP'),
    ('Loja Biju Modas', null, '98765432109876', '9988776655', 'atendimento@bijumodas.com', 'Avenida das Indústrias', '700', 'Industrial', 'Curitiba', 'PR'),
    ('Farmácia São Miguel', null, '56789012345678', '3322114455', 'vendas@farmaciasaomiguel.com', 'Alameda dos Negócios', '123', 'Empresarial', 'Rio de Janeiro', 'RJ'),
    ('Sysmo Sistemas', null, '23456789012345', '4433221100', 'comercial@sysmo.com', 'Rua da Produção', '987', 'Industrial Sul', 'Belo Horizonte', 'MG'),
    ('Mercado e Açougue Gianezini', null, '89012345678901', '5544332211', null, 'Avenida dos Serviços', '345', 'Prestação de Serviços', 'Porto Alegre', 'RS');

insert into veiculo (id_veiculo, id_cliente, marca, modelo, cor, ano, placas) values
    (1,14, 'Ford', 'Fiesta', 'Prata', '2019', 'ABC1234'),
    (2,12, 'Chevrolet', 'Onix', 'Branco', '2020', 'XYZ5678'),
    (3,9, 'Volkswagen', 'Gol', 'Preto', '2018', 'MNO4567'),
    (4,5, 'Fiat', 'Uno', 'Vermelho', '2021', 'PQR7890'),
    (5,2, 'Toyota', 'Corolla', 'Azul', '2019', 'JKL2345'),
    (6,1, 'Renault', 'Kwid', 'Verde', '2020', 'DEF6789'),
    (7,4, 'Honda', 'Civic', 'Prata', '2017', 'WXY1234'),
    (8,10, 'Hyundai', 'HB20', 'Branco', '2021', 'UVW5678'),
    (9,3, 'Nissan', 'Versa', 'Cinza', '2018', 'OPQ4567'),
    (10,6, 'Jeep', 'Compass', 'Preto', '2019', 'RST7890'),
    (11,11, 'Ford', 'Ka', 'Vermelho', '2020', 'LMN2345'),
    (12,13, 'Chevrolet', 'Cruze', 'Prata', '2018', 'HIJ6789'),
    (13,7, 'Volkswagen', 'Polo', 'Azul', '2021', 'GHI1234'),
    (14,8, 'Fiat', 'Toro', 'Branco', '2019', 'DEF5678'),
    (15,15, 'Toyota', 'Hilux', 'Preto', '2020', 'ABC4567');
   
  insert into servico (descricao) values
    ('Mão de obra'),
    ('Troca de óleo'),
    ('Alinhamento e balanceamento'),
    ('Reparo de freios'),
    ('Troca de pneus'),
    ('Manutenção elétrica'),
    ('Limpeza de bicos injetores'),
    ('Troca de correias'),
    ('Troca de amortecedores'),
    ('Diagnóstico de motor'),
    ('Troca de velas'),
    ('Manutenção de ar-condicionado'),
    ('Reparo de sistema de direção'),
    ('Balanceamento de rodas'),
    ('Limpeza de radiador'),
    ('Troca de fluidos'),
    ('Reparo de suspensão'),
    ('Recarga de gás de ar-condicionado');

 insert into produto (descricao, qtd_Est, custo_unit) values
 	('Parafuso 5mm', 500, 0.10),
    ('Óleo de motor 5W30', 100, 25.00),
    ('Filtro de ar', 200, 15.00),
    ('Pastilha de freio dianteira', 50, 50.00),
    ('Fluido de freio DOT 4', 30, 12.00),
    ('Lâmpada de farol', 150, 5.00),
    ('Filtro de combustível', 80, 20.00),
    ('Bateria 60Ah', 20, 180.00),
    ('Palheta do limpador', 100, 8.00),
    ('Correia dentada', 30, 25.00),
    ('Vela de ignição', 120, 6.00),
    ('Borracha de vedação', 300, 2.00),
    ('Amortecedor dianteiro', 10, 100.00),
    ('Sensor de oxigênio', 25, 30.00),
    ('Alternador', 5, 150.00);

   insert into pagamento (cad_pagamento, tipo_pagamento) values
   	('2023-01-21 10:00:00', 'Dinheiro'),
    ('2023-02-11 15:30:00', 'Crédito'),
    ('2023-03-30 14:20:00', 'Débito'),
    ('2023-04-26 17:45:00', 'Pix'),
    ('2023-05-14 09:10:00', 'Crédito'),
    ('2023-06-02 16:50:00', 'Débito'),
    ('2023-01-05 10:00:00', 'Pix'),
    ('2023-08-09 11:00:00', 'Pix'),
    ('2023-08-16 15:30:00', 'Dinheiro'),
    ('2023-02-01 16:30:00', 'Dinheiro');
    
insert into os(id_veiculo, id_cliente, id_pagamento, data_inicio, situacao, data_fim) values
    (1,14, 8, '2023-01-01 08:00:00', 'Veículo entregue', '2023-01-05 10:00:00'),
    (2,12, 12, '2023-02-15 09:00:00', 'Veículo entregue',  '2023-02-16 11:00:00'),
    (1,14, 3, '2023-02-19 10:00:00', 'Veículo entregue', '2023-02-19 16:00:00'),
    (4,5, 7, '2023-03-17 11:00:00', 'Veículo entregue', '2023-03-18 13:00:00'),
    (1,14, 5, '2023-03-28 12:00:00', 'Veículo entregue', '2023-03-30 14:00:00'),
    (6,1, 11, '2023-04-06 13:00:00', 'Veículo entregue', '2023-04-06 15:00:00'),
    (7,4, 14, '2023-04-07 14:00:00', 'Veículo entregue', '2023-04-07 16:00:00'),
    (8,10, 10, '2023-04-08 15:00:00', 'Veículo entregue', '2023-04-08 17:00:00'),
    (13,7, 1, '2023-05-09 16:00:00', 'Finalizada', '2023-05-09 18:00:00'),
    (9,3, 6, '2023-06-10 17:00:00', 'Finalizada', '2023-06-10 19:00:00'),
    (10,6, null, '2023-08-11 18:00:00','Em atendimento', null),
    (15, 10, null, '2023-08-12 19:00:00', 'Em atendimento', null),
    (11,11, null, '2023-08-13 20:00:00', 'Em atendimento', null),
    (12,13, null, '2023-08-14 21:00:00', 'Aguardando peças', null),
    (13,7, null, '2023-08-15 22:00:00', 'Aguardando início', null),
    (14,8, null, '2023-08-16 23:00:00', 'Aguardando início', null);
        
  insert into itens_os (id_item, id_servico, id_os, quantidade, preco_unit) values
    (1, 1, 1, 1, 50.00),
    (2, 2, 1, 1, 30.00),
    (3, 3, 1, 4, 15.00),
    (4, 4, 2, 2, 20.00),
    (5, 5, 2, 3, 25.00),
    (6, 6, 3, 1, 10.00),
    (7, 7, 4, 2, 15.00),
    (8, 8, 5, 1, 30.00),
    (9, 9, 6, 4, 5.00),
    (10, 10, 6, 3, 40.00),
    (11, 11, 7, 2, 25.00),
    (12, 12, 7, 1, 10.00),
    (13, 13, 7, 3, 15.00),
    (14, 14, 8, 2, 20.00),
    (15, 15, 8, 1, 10.00),
    (8, 16, 9, 4, 5.00),
    (4, 18, 10, 2, 20.00),
    (5, 17, 10, 3, 25.00);
   
   
   
   