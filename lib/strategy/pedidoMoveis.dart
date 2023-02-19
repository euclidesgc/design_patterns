import 'package:design_patterns/Strategy/frete_expresso.dart';

import 'pedido.dart';

class PedidoMoveis extends Pedido {
  final String setor = 'Móveis';

  PedidoMoveis(super.valor, super.frete);

  @override
  calculaFrete() {
    if (frete.runtimeType == FreteExpresso) {
      throw Exception('Não é possível calcular frete expresso para móveis');
    }
    return frete.calcula(valor);
  }
}
