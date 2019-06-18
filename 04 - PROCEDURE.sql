#4.Criar uma procedure que exiba os dados dos animais (nome, espécie e raça) com os respectivos nomes de clientes.
#O parâmetro que deverá ser passado será o id do Cliente

use PET_SHOP;

delimiter **
create procedure dadosAnimal (varidCliente int)

BEGIN
select CC.idAnimal, CC.nomeAnimal, CC.especie, CC.racaAnimal, C.nomeCliente, C.idCliente
from ANIMAL CC inner join CLIENTE C
on CC.idCliente=C.idCliente  
where CC.idCliente = varidCliente;
END;
**
call dadosAnimal(2);


