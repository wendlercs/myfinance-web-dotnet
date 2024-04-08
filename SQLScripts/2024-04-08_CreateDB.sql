CREATE DATABASE myfinance;
go

use myfinance;

create table planoconta(
	id int identity (1,1) not null,
	descricao varchar(50) not null,
	tipo char (1) not null,
	primary key (id)
);

create table transacao(
	id int identity (1,1) not null,
	historico text null,
	data date not null,
	valor decimal(9,2),
	planocontaid int not null,
	primary key (id),
	foreign key (planocontaid) references planoconta(id)
);

insert into transacao(historico, data, valor, planocontaid)
values('Salário', '2024-04-01', 1000, 4)

