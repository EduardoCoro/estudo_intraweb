unit SQLs;

interface

const
  // Clientes
  SQLCliente = 'select * from CUSTOMER';
  SQLWhereCliente = 'where COMPANY like ''%s''';
  SQLWhereIDCliente = 'where CustNo = %d';

  // Pedidos Cliente
  SQLPedidosCliente = 'select * from ORDERS ';

  // detalhes do pedido
  SQLDetalhesPedido =
  'Select ' +
  '  i.ItemNo, ' +
  '  p.Description, ' +
  '  i.Qty, ' +
  '  p.Listprice, ' +
  '  i.Qty * p.ListPrice total ' +
  ' From ' +
  '   ITEMS i inner join Parts p on i.partno = p.partno ' +
  ' where ' +
  '   i.OrderNo = %d ';

  // Paises
  SQLPaises = 'select distinct COUNTRY from CUSTOMER order by COUNTRY';

implementation

end.
