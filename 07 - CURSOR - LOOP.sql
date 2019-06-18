#7. Fazer uma procedure com cursor que junte o cliente(dono) com o nome do seu animal.
# O id do Cliente será passado como parametro

use PET_SHOP;

Delimiter //
create procedure exe7(varidCliente int, out animalList varchar(4000))
begin
	declare finish int default 0;
    declare n_nomeCliente varchar(100) default "";
    declare a_nomeAnimal varchar(100) default "";

	Declare cursor_exe7 CURSOR FOR 
		select cliente.nomeCliente, animal.nomeAnimal
        from cliente inner join animal
        on cliente.idCliente = animal.idAnimal
        where cliente.idCliente = varidCliente;
        
	Declare continue handler for not found set finish = 1;
    
    set animalList = "";
    
    open cursor_exe7;
    
    getNome: LOOP
		fetch cursor_exe7 into n_nomeCliente, a_nomeAnimal;
        
        if finish = 1 then
			leave getNome;
		end if;
        
        set animalList = CONCAT(n_nomeCliente, ' e seu animal é: ', a_nomeAnimal);
	end loop getNome;
    close cursor_exe7;
end;
//

drop procedure exe7;
call exe7(5, @animalList);
select @animalList;

