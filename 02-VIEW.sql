use PET_SHOP;

/*2. Criar uma view que armazene qual o cliente que possui um hamster como animal de estimação.*/ 
create view clienteHamster as  
select E.idAnimal, C.nomeCliente, E.especie 
from ANIMAL E inner join CLIENTE C
on E.idCliente = C.idCliente where E.especie like '%Hamster%';

select * from clienteHamster;