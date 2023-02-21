import 'package:design_patterns/state/i_state.dart';
import 'package:design_patterns/state/pedido.dart';

class CanceladoState implements IState {
  final Pedido pedido;

  CanceladoState(this.pedido);

  @override
  void cancelarPedido() {
    throw Exception('O pedido já foi cancelado.');
  }

  @override
  void despacharPedido() {
    throw Exception('O pedido não pode ser despachado. Ele foi cancelado.');
  }

  @override
  void sucessoAoPagar() {
    print('Este pedido foi cancelado.');
  }
}
