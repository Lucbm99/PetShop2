#6. Crie um trigger para incluir uma linha na tabela novoCliente, toda vez que ocorrer um insert na tabela Cliente.
# As informações da tabela novoCliente devem vir da tabela Cliente.
# Teste sua trigger fazendo um insert na tabela pedido.

use PET_SHOP;

CREATE TRIGGER trigger_novo_cliente 
BEFORE INSERT 
ON CLIENTE 
FOR EACH ROW 
INSERT novoCliente(idCliente, nomeCliente, CPF, telefone) 
VALUES(NEW.idCliente,NEW.nomeCliente, NEW.CPF, new.telefone); 

select * from novoCliente;