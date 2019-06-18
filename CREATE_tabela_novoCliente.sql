use PET_SHOP;

DROP TABLE IF EXISTS novoCliente;
create table if not exists novoCliente(
idCliente int auto_increment not null,
nomeCliente varchar(30),
CPF char(12),
telefone varchar(15),
primary key (idCliente)
);	