import 'pedido.dart';

class PedidoEletronicos extends Pedido {
  PedidoEletronicos(super.valor, super.frete);

  final String setor = 'Eletrônicos';
}
