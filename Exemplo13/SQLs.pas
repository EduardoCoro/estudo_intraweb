unit SQLs;

interface

const
  // Clientes
  SQLCliente = 'select * from CUSTOMER';
  SQLWhereCliente = 'where COMPANY like ''%s''';

  // Pedidos Cliente
  SQLPedidosCliente = 'select * from ORDERS where CUSTNO = %s';

  // Paises
  SQLPaises = 'select distinct COUNTRY from CUSTOMER order by COUNTRY';

implementation

end.
