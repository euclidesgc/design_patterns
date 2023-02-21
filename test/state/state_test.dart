import 'package:design_patterns/state/pedido.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {});

  test('State', () async {
    Pedido pedido = Pedido();
    pedido.cancelarPedido();
    pedido.sucessoAoPagar();
  });
}
