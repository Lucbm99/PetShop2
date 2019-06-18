#5. crie uma função que retorne a média de uma venda com o valor de seu produto.

use PET_SHOP;

delimiter ++
create function mediaVendas(valor decimal(10,2), valorTotal decimal(10,2))
returns decimal(10,2)
no sql
  begin
    return ( valor + valorTotal ) / 2;
  end;
++

select mediaVendas(40, 35.50) as Resultado;