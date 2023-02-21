import 'package:design_patterns/state/i_state.dart';
import 'package:design_patterns/state/pedido.dart';

class EnviadoState implements IState {
  final Pedido pedido;

  EnviadoState(this.pedido);

  @override
  void cancelarPedido() {
    throw Exception('O pedido já foi enviado!');
  }

  @override
  void despacharPedido() {
    throw Exception('O pedido já foi enviado!');
  }

  @override
  void sucessoAoPagar() {
    throw Exception('O pedido já foi enviado!');
  }
}
