drop database if exists PET_SHOP;
create database if not exists PET_SHOP;
use PET_SHOP;

create table if not exists CLIENTE(
idCliente int auto_increment not null,
nomeCliente varchar(30),
CPF char(12),
telefone varchar(15),
primary key (idCliente)
);	

create table if not exists ANIMAL(
idAnimal int auto_increment not null,
nomeAnimal varchar(30),
especie varchar(30),
racaAnimal varchar(30),
pesoAnimal decimal(10,3),
dataNascimento date,
idCliente int,
primary key (idAnimal),
foreign key (idCliente) references CLIENTE(idCliente)
);

create table if not exists PRODUTOS_SERVICOS(
idProdutos_Servicos int auto_increment not null,
nome varchar(30),
descricao varchar(30),
valor decimal(10,2),
fornecedor varchar(30),
tipo varchar(45),
primary key (idProdutos_Servicos)
);

create table if not exists VENDAS(
idVendas int auto_increment not null,
quantidade int,
dataVenda date,
valorTotal decimal(10,2),
idCliente int,
primary key (idVendas),
foreign key (idCliente) references CLIENTE(idCliente)
);

create table if not exists ITEM(
quantidade int,
valorTotal decimal(10,2),
idVendas int,
idProdutos_Servicos int,
primary key (idVendas, idProdutos_Servicos),
foreign key (idVendas) references VENDAS (idVendas),
foreign key (idProdutos_Servicos) references PRODUTOS_SERVICOS (idProdutos_Servicos)
);


insert into CLIENTE values
/* inserir valores --> idCliente, nome, CPF, telefone*/
(null, 'João Paulo', '36602530261', '38953545'),
(null, 'José Franco', '43912216835', '38074206'),
(null, 'Cezar Gonçalves', '28851360812', '39554522'),
(null, 'Orlando Bezerra', '35467123044', '32194442');
#(null, 'Mauricio Raniel', '43312216537', '44331212');

insert into ANIMAL values
/*inserir valores --> idAnimal, nomeAnimal, especie, racaAnimal, pesoAnimal, idade, idCliente*/
(null, 'Tobias', 'Cachorro', 'Buldogue', 24.500, '2015-11-15', 1),
(null, 'Fred', 'Cachorro' , 'Pastor Alemão', 21.500, '2012-04-23', 2),
(null, 'Bob', 'Hamster', 'Hamster anão chinês', 1.500, '2009-03-24', 3),
(null, 'Elliot', 'Gato', 'Persa', 3.6000, '2015-09-22', 1),
(null, 'Floquinho', 'Gato' , 'Siamês', 5.2000, '2016-05-11', 2),
(null, 'Sansão', 'Pássaro', 'Pardal', 1.400, '2016-04-04', 3),
(null, 'Loop', 'Cachorro', 'Poodle', 13.700, '2015-07-22', 1),
(null, 'Coringa', 'Coelho', 'Fuzzy lop', 1.200, '2009-12-15', 3);


insert into PRODUTOS_SERVICOS values
/*inserir valores --> idProdutos_Servicos, nome, descricao, valor, fornecedor, tipo*/
(null, 'Tosa', 'Aparar os pêlos', 40.00, 'Pet Shop R', 'Serviço'),
(null, 'Ração Frango', 'Alimento para cães/gatos', 12.00, 'Pedigree', 'Produto'),
(null, 'Banho', 'Lavar os pêlos', 20.00, 'Pet Shop R', 'Serviço'),
(null, 'Ração Carne', 'Alimento para cães/gatos', 15.00, 'Pedigree', 'Produto'),
(null, 'Vacina anti-raiva', 'Medicação', 15.00, 'Pet Shop R', 'Serviço'),
(null, 'Alpiste', 'Alimento para pássaros', 5.00, 'Magnus', 'Produto'),
(null, 'Girassol', 'Alimento para pássaros', 3.50, 'Magnus', 'Produto'),
(null, 'Painço', 'Alimento para pássaros', 6.70, 'Magnus', 'Produto'),
(null, 'Escovação', 'Escovar os pêlos', 25.00, 'Pet Shop R', 'Serviço'),
(null, 'Ração para Peixes', 'Alimento para peixes',5.00, 'Magnus', 'Produto');

insert into VENDAS values 
/*inserir valores --> idVendas, quantidade, dataVenda, valorTotal, idCliente*/
(null, 2, '2010-04-25', 35.50, 1),
(null, 3, '2010-11-01', 11.60, 2),
(null, 5, '2014-03-07', 12.15, 3),
(null, 4, '2014-06-26', 25.90, 3),
(null, 2, '2018-12-31', 15.30, 2),
(null, 3, '2018-02-23', 41.35, 1),
(null, 5, '2013-04-19', 10.90, 2),
(null, 7, '2013-09-12', 8.45, 1),
(null, 2, '2015-05-11', 3.75, 3),
(null, 1, '2015-08-06', 3.75, 2);

insert into ITEM values 
/*inserir valores --> idItem, nomeItem, quantidade, valorTotal, idVendas, idProdutos_Servicos*/
(2, 32.00, 1, 1),
(2, 35.00, 2, 2),
(2, 60.00, 2, 3),
(2, 52.00, 3, 4),
(2, 30.00, 5, 6),
(2, 8.50, 7, 8),
(2, 35.00, 1, 4),
(3, 23.70, 2, 5),
(2, 65.00, 7, 6);

select * from CLIENTE;
select * from ANIMAL;
select * from PRODUTOS_SERVICOS;
select * from VENDAS;
select * from ITEM;
