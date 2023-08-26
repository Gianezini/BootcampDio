# drop database ecommerce;
# create database ecommerce;
# use ecommerce;

show tables;
	
	# Criar tabela CLIENTE
create table cliente(
	Id_Cliente int auto_increment primary key,
	Primeiro_Nome varchar (30),
	Meio_Nome varchar (30),
	Ultimo_Nome varchar (30),
	CPF char (11) not null,
	Rua varchar (20),
	Complemento varchar (20),
	Cidade varchar (30),
	UF char (2),
	CEP char (8),
	
	constraint unique_CPF_cliente unique (CPF)
);

alter table cliente auto_increment = 1;

	# Criar tabela PRODUTO
create table produto (
	Id_Produto int auto_increment primary key,
	Nome_Produto varchar (50),
	Classificacao_infantil bool default false,
	Categoria enum('Eletrônico', 'Vestuário','Brinquedo','Alimento','Móveis') not null,
	Avaliacao float default 0,
	Dimensao varchar (15)
);

alter table produto auto_increment = 1;

	# Criar tabela VENDEDOR
create table vendedor (
	Id_Vendedor int auto_increment primary key,
	Razao_social varchar (255) not null,
	Nome_Fantasia varchar (255) not null,
	Nome_Responsavel varchar (30) not null,
	CPF  char (11) not null,
	CNPJ char (14) not null,
	Rua varchar (20),
	Complemento varchar (20),
	Cidade varchar (30),
	UF char (2)not null,
	CEP char (8)not null,
	
	constraint unique_CPF_Vendedor unique (CPF),
	constraint unique_CNPJ_Vendedor unique (CNPJ)
);
alter table vendedor auto_increment = 1;

	# Criar tabela PAGAMENTO
create table pagamento(
	Id_Pagamento int auto_increment,
	Data_Cad_Pag datetime default current_timestamp,
	Tipo_Pag enum ('Boleto','Crédito','PIX','Débito') not null,
	Num_Parcela int default 0,
	Cliente_Bloq bool default false,

	primary key (Id_Pagamento)
);
alter table pagamento auto_increment = 1;	

	# Criar tabela PEDIDO
create table pedido (
	Id_Pedido int auto_increment primary key,
	Data_Cad_Pedido datetime default current_timestamp,
	Data_Alt_Pedido datetime on update current_timestamp,
	Id_Cliente_Pedido int,
	Id_Vendedor_Produto int,
	Id_Produto_Produto int,
	Id_Pagamento_Pedido int,
	Sit_Pedido enum ('Cancelado','Confirmado','Processando','Enviado') default 'Confirmado',
	Valor_total float,
	Valor_Frete float,
	Valor_Desconto float,
	Obs varchar (255),	
	
	constraint fk_pedido_cliente foreign key (Id_Cliente_Pedido) references cliente(Id_Cliente),
	constraint fk_pedido_pagamento foreign key (Id_Pagamento_Pedido) references pagamento(Id_Pagamento),
	constraint fk_pedido_vendedor foreign key (Id_Vendedor_produto) references vendedor(Id_Vendedor),
	constraint fk_pedido_produto foreign key (Id_Produto_produto) references produto(Id_Produto)
		on update cascade
);
alter table pedido auto_increment = 1;

	# Criar tabela ESTOQUE
create table estoque (
	Id_Produto int auto_increment primary key,
	Qtd_Estoque int default 0,
	LocalEstoque varchar (255)
);
alter table estoque auto_increment = 1;		

	# Criar tabela FORNECEDOR
create table fornecedor (
	Id_Fornecedor int auto_increment primary key,
	Razao_Social varchar (255) not null,
	CNPJ char (14) not null,
	contato varchar (15) not null,
	
	constraint unique_CNPJ unique (CNPJ)
);
alter table fornecedor auto_increment = 1;	

	# Criar tabela PRODUTOS DO VENDEDOR
create table ProdutoVendedor(
	Id_Prod_Vendedor int,
	Id_Produto int,
	Quantidade int default 1,
	
	primary key (Id_Prod_Vendedor, Id_Produto),
	constraint fk_Prod_Vendedor foreign key (Id_Prod_Vendedor) references vendedor(Id_Vendedor),
	constraint fk_Prod_Produto foreign key (Id_Produto) references produto(Id_Produto)
);

	# Criar tabela Localização do Estoque
create table LocalEstoque (
	Id_Local_Produto int,
	Id_Local_Estoque int,
	localizacao varchar (255) not null,
	
	primary key (Id_Local_Produto, Id_Local_Estoque),
	constraint fk_LocalEstoque_Produto foreign key (Id_Local_Produto) references produto (Id_Produto),
	constraint fk_LocalEstoque_Estoque foreign key (Id_Local_Estoque) references estoque (Id_Produto)
);

	# Criar tabela Produto do Fornecedor
create table ProdutoFornecedor (
	Id_PF_Fornecedor int,
	Id_PF_Produto int,
	Quantidade int not null,
	
	primary key (Id_PF_Fornecedor, Id_PF_Produto),
	constraint fk_Produto_Fornecedor_Fornecedor foreign key (Id_PF_Fornecedor) references fornecedor(Id_Fornecedor),
	constraint fk_Produto_Fornecedor_Produto foreign key (Id_PF_Produto) references produto(Id_Produto)
);


show tables;
show databases;

use information_schema;
show tables;
desc referential_constraints;
	
select * from referential_constraints where constraint_schema = 'ecommerce';