import 'package:design_patterns/state/i_state.dart';
import 'package:design_patterns/state/pedido.dart';
import 'package:design_patterns/state/states/cancelado_state.dart';
import 'package:design_patterns/state/states/enviado_state.dart';

class PagoState implements IState {
  final Pedido pedido;

  PagoState(this.pedido);

  @override
  void cancelarPedido() {
    pedido.estadoAtual = CanceladoState(pedido);
    print('Pedido cancelado com sucesso.');
  }

  @override
  void despacharPedido() {
    pedido.estadoAtual = EnviadoState(pedido);
    print('Pedido despachado com sucesso.');
  }

  @override
  void sucessoAoPagar() {
    throw Exception('Este pedido já foi pago.');
  }
}
