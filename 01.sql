use PET_SHOP;

/*1. Qual o cliente tem o animal de menor peso?*/     
/*Junção de duas tabelas com inner join para saber o cliente que tem o animal de menor peso*/   
select E.idAnimal as 'Código do Animal', C.nomeCliente as 'Nome do Cliente', E.nomeAnimal, E.pesoAnimal as 'Peso Animal'
from ANIMAL E inner join CLIENTE C
on E.idCliente = C.idCliente 
where E.pesoAnimal = (select min(animal.pesoAnimal) from animal);

