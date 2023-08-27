# drop database oficina;
# create database oficina;
# use oficina;
# show tables;
	
create table cliente (
	id_cliente int auto_increment primary key,
	nome varchar(50) not null,
	CPF char(11),
	CNPJ char (14),
	telefone varchar (11),
	email varchar (50),
	Rua varchar (50),
	Nr varchar (5),
	Bairro varchar (50),
	Cidade varchar(50),
	UF char (2),
	
constraint chk_cpf_cnpj check (CPF is not null or CNPJ is not null)
);

create table veiculo (
	id_veiculo int auto_increment primary key,
	id_cliente int,
	marca varchar (20) not null,
	modelo varchar (20) not null,
	cor varchar (15),
	ano char (4),
	placas char (7) not null,
	
	constraint fk_id_cliente_cliente foreign key (id_cliente) references cliente(id_cliente)
);

create table servico (
	id_servico int auto_increment primary key,
	descricao varchar (50)
);

create table produto (
	id_item int auto_increment primary key,
	descricao varchar (50),
	qtd_Est int,
	custo_unit float not null
);

create table pagamento (
	id_pagamento int auto_increment primary key,
	cad_pagamento datetime default current_timestamp,
	tipo_pagamento enum ('Dinheiro','Crédito','Débito','Pix'),
	nr_parcela int default 1
);

create table os (
	id_os int auto_increment primary key,
	id_veiculo int,
	id_cliente int,
	id_pagamento int,
	data_inicio datetime default current_timestamp,
	situacao enum ('Aguardando início','Em atendimento','Aguardando peças','Finalizada','Veículo entregue'),
	data_fim datetime,
	
	constraint fk_id_pagamento_pagamento foreign key (id_pagamento) references pagamento(id_pagamento),
	constraint fk_id_veiculo_veiculo foreign key (id_veiculo) references veiculo(id_veiculo),
	constraint fk_id_clienteOS_cliente foreign key (id_cliente) references cliente(id_cliente)
);

create table itens_os (
	id_item int,
	id_servico int,
	id_os int,
	quantidade int,
	preco_unit float,
	
	constraint fk_id_item_estoque foreign key (id_item) references produto(id_item),
	constraint fk_id_servico_servico foreign key (id_servico) references servico(id_servico),
	constraint fk_id_os_os foreign key (id_os) references OS(id_os)
);