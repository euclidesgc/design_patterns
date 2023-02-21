import 'package:design_patterns/state/i_state.dart';
import 'package:design_patterns/state/pedido.dart';
import 'package:design_patterns/state/states/pago_state.dart';

class AguardandoPagamentoState implements IState {
  final Pedido pedido;

  AguardandoPagamentoState(this.pedido);

  @override
  void cancelarPedido() {
    throw Exception('O pedido não pode ser cancelado. Ele ainda não foi pago.');
  }

  @override
  void despacharPedido() {
    throw Exception(
        'O pedido não pode ser despachado. Ele ainda não foi pago.');
  }

  @override
  void sucessoAoPagar() {
    pedido.estadoAtual = PagoState(pedido);
    print('O pedido foi pago com sucesso.');
  }
}
