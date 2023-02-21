import '../frete/frete_expresso.dart';
import 'i_pedido.dart';

class PedidoMoveis extends IPedido {
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
