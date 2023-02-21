import 'package:design_patterns/strategy/frete/frete.dart';
import 'package:design_patterns/strategy/pedido/pedido.dart';
import 'package:test/test.dart';

void main() {
  late double valor;
  final freteComum = FreteComum();
  final freteExpresso = FreteExpresso();
  late PedidoEletronicos pedidoEletronicos;
  late PedidoMoveis pedidoMoveis;

  group('Strategy', () {
    test('Frete comum', () {
      valor = 100;
      print('Frete comum:');
      pedidoEletronicos = PedidoEletronicos(valor, freteComum);
      print('Pedido de eletrônicos:');
      print('valor do frete: R\$ ${pedidoEletronicos.calculaFrete()}');
      valor = 1500;
      pedidoMoveis = PedidoMoveis(valor, freteComum);
      print('Pedido de móveis:');
      print('valor do frete: R\$ ${pedidoMoveis.calculaFrete()}');
    });

    test('Frete expresso', () {
      print('Frete expresso:');
      pedidoEletronicos = PedidoEletronicos(100, freteExpresso);
      print('Pedido de eletrônicos:');
      print('valor do frete: R\$ ${pedidoEletronicos.calculaFrete()}');

      try {
        valor = 1500;
        pedidoMoveis = PedidoMoveis(valor, freteExpresso);
        print('Pedido de móveis:');
        print('valor do frete: R\$ ${pedidoMoveis.calculaFrete()}');
      } catch (e) {
        print(e);
      }
    });
  });
}
