// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'i_state.dart';
import 'states/states.dart';

class Pedido {
  late IState _aguardandoPagamento;
  late IState _pago;
  late IState _cancelado;
  late IState _enviado;

  late IState _estadoAtual;

  Pedido() {
    _aguardandoPagamento = AguardandoPagamentoState(this);
    _pago = PagoState(this);
    _cancelado = CanceladoState(this);
    _enviado = EnviadoState(this);

    _estadoAtual = _aguardandoPagamento;
  }

  set estadoAtual(IState estado) {
    _estadoAtual = estado;
  }

  IState get pago => _pago;
  IState get cancelado => _cancelado;
  IState get enviado => _enviado;
  IState get aguardandoPagamento => _aguardandoPagamento;

  void sucessoAoPagar() {
    try {
      _estadoAtual.sucessoAoPagar();
    } catch (e) {
      print(e);
    }
  }

  void cancelarPedido() {
    try {
      _estadoAtual.cancelarPedido();
    } catch (e) {
      print(e);
    }
  }

  void despacharPedido() {
    try {
      _estadoAtual.despacharPedido();
    } catch (e) {
      print(e);
    }
  }
}
