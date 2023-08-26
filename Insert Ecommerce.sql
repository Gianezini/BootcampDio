use ecommerce;
show tables;

select * from cliente c 

insert into cliente (Primeiro_Nome, Meio_Nome, Ultimo_Nome, CPF, Rua, Complemento, UF, CEP, Cidade) values
	('Mauricio','Augusto','Gianezini',12345678910,'Oiapoc 1257','Porão','SC',89900000, 'São Miguel do Oeste'),
	('Neymar','A','Junior',12345678911,'Conceissão 654','','SC',85458000,'Balneário Camboriú'),
	('Ronaldinho','Bruxo','Gaúcho',12345678912,'Jorge Lacerda 650','Apto 102','RS',45520000,'Porto Alegre'),
	('Larissa','O','Manoela',12345678913,'Tiradentes 1234','Kitnet','SP',85680000,'São Paulo'),
	('Silvio','Abravanel','Santos',12345678914,'Bau 1234','','SP',85680000,'São Paulo');

insert into produto (Nome_Produto, Classificacao_infantil, Categoria, Avaliacao, Dimensao) values
	('Notebook Dell G15 i5 12500u', false, 'Eletrônico',4.9, '21.5x12x1'),
	('Monitor Samsung 24p 4k', false, 'Eletrônico', 4.7,''),
	('Boneco Batman - Batman Vs Joker', true, 'Brinquedo', 4.1,''),
	('Plets Hortelã', true, 'Alimento', 5, ''),
	('PlayStation 5 Digital Edition', true, 'Eletrônico', 4.5, '13x42x8'),
	('Mesa escritório Zakar', false, 'Móveis', 3.8, '200x100x3');
	
select id_pedido, valor_total from pedido
	
insert into vendedor (Razao_social, Nome_Fantasia,Nome_Responsavel,CPF,CNPJ,Rua,Complemento,Cidade,UF,CEP) values 
	('JOSE GOMES ALBUQUERQUE LTDA', 'Smart Eletronics','Jose Albuquerque', 12365479521, 12512365000125, 'Samanbaia, 360', null, 'Rio de Janeiro','RJ',65599000),
	('Zakar Moveis e Eletro', 'Zakar Móveis', 'Danilo Morais Vasconcellos', 12542563252, 12545635000196, 'Tancredo Neves, 85', 'Interior', 'Chapecó', 'SC', 25541000),
	('Halls do Brasil','Halls Distribuidora', 'Patricia Abravanel', 12548545215, 23622541000125, 'Rio Branco, 564', 'BR101', 'Belo Horizonte', 'MG', 64546000);
	
insert into pagamento (Data_Cad_Pag, Tipo_Pag, Num_Parcela, Cliente_Bloq) values
	('2023-07-29 14:30:00', 'Boleto', default,false),
	('2023-05-15 08:12:35', 'Crédito', 4, false),
	('2023-01-30 19:48:10', 'Débito', default, false),
	('2023-08-15 21:10:57', 'Crédito', 12, true),
	('2023-04-20 11:42:10', 'Crédito', 12, true),
	('2023-01-30 19:48:10', 'PIX', default, true),
	('2023-01-30 19:48:10', 'Boleto', default, true);

insert into pedido (Data_Cad_Pedido, Data_Alt_Pedido, Id_Cliente_Pedido, Id_Vendedor_Produto , Id_Pagamento_Pedido , Sit_Pedido, Valor_total , Valor_Frete, Valor_Desconto , Obs, Id_Produto_Produto ) values
	('2023-07-29 14:30:00', null, 5, 1, 1, 'Confirmado', 159.99, 15, null, 'Entregar na casa ao lado', 3),
	('2023-05-15 08:12:35', null, 1, 1, 2, 'Processando', 4399.49, 85.19, 199.99, null, 5),
	('2023-08-15 21:10:57', '2023-08-30 22:15:40', 2, 2, 3, 'Cancelado', 499.50, 115, null,null, 6),
	('2023-01-30 19:48:10', '2023-01-30 19:55:01', 4, 3, 4, 'Enviado', 50,null,null, 'Entregar a Dona Maria', 4),
	('2023-04-20 11:42:10', null, 2, 2, 5, 'Enviado', 459.5, null,40, 'Deixar com o Manoel', 6),
	('2023-01-30 19:48:10', null, 3, 1, 6, 'Confirmado', 1249, null,null, 'Deixar na portaria', 2),
	('2023-01-30 19:48:10', null, 2, 1, 7, 'Enviado', 1149, null,100, null, 2);

insert into estoque (Qtd_Estoque, LocalEstoque) values
	(2,null),
	(4,null),
	(10,null),
	(560,null),
	(18,null),
	(7,null);

insert into fornecedor (Razao_Social, CNPJ, contato) values
	('JOSE GOMES ALBUQUERQUE LTDA', 12512365000125, 21988458512),
	('Zakar Moveis e Eletro',12545635000196, 1633650152),
	('Halls do Brasil', 23622541000125, 31991548546);

insert into ProdutoVendedor (Id_Prod_Vendedor, Id_Produto, Quantidade) values
	(1, 1, 2),
	(1, 2, 3),
	(1, 3, 4),
	(3, 4, 5),
	(1, 5, 6),
	(2, 6, 7);

	insert into produtopedido (Id_PP_Produto, Id_PP_Pedido, Quantidade_Prod_pedido, Prod_Pedido_Status) values
	(3, 15, 1, 'Disponível'),
	(5, 16, 1, 'Disponível'),
	(6, 17, 1, 'Disponível'),
	(4, 18, 1, 'Disponível'),
	(6, 19, 1, 'Disponível'),
	(2, 20, 1, 'Disponível'),
	(2, 21, 1, 'Disponível');

	insert into LocalEstoque (Id_Local_Produto, Id_Local_Estoque, localizacao) values
	(1, 1, 'São Paulo'),
	(2, 2, 'Salvador'),
	(3, 3, 'Porto Alegre'),
	(4, 4, 'Belém'),
	(5, 5, 'São Paulo'),
	(6, 6, 'Amazonas');

	insert into produtofornecedor (Id_PF_Fornecedor, Id_PF_Produto, Quantidade) values
	(1, 1, 1),
	(1, 2, 1),
	(1, 3, 1),
	(3, 4, 1),
	(1, 5, 1),
	(2, 6, 1);
