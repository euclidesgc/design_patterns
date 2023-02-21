import 'i_pedido.dart';

class PedidoEletronicos extends IPedido {
  PedidoEletronicos(super.valor, super.frete);

  final String setor = 'Eletrônicos';
}
