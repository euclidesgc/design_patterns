import 'package:design_patterns/Strategy/frete_comum.dart';
import 'package:design_patterns/Strategy/frete_expresso.dart';
import 'package:design_patterns/Strategy/pedidoEletronicos.dart';
import 'package:design_patterns/Strategy/pedidoMoveis.dart';
import 'package:test/test.dart';

void main() {
  test('Strategy', () async {
    final double valor = 100;
    final freteComum = FreteComum();
    final freteExpresso = FreteExpresso();
    late PedidoEletronicos pedidoEletronicos;
    late PedidoMoveis pedidoMoveis;

    pedidoEletronicos = PedidoEletronicos(valor, freteComum);
    print('Pedido de eletrônicos:');
    print('Frete comum: R\$ ${pedidoEletronicos.calculaFrete()}');

    pedidoEletronicos = PedidoEletronicos(100, freteExpresso);
    print('Frete expresso: R\$ ${pedidoEletronicos.calculaFrete()}');
    print('\n');

    pedidoMoveis = PedidoMoveis(valor, freteComum);
    print('Pedido de móveis:');
    print('Frete comum: R\$ ${pedidoMoveis.calculaFrete()}');

    //Frete expresso não está disponível para móveis!
    // pedidoMoveis = PedidoMoveis(valor, freteExpresso);
    // print('Frete expresso: R\$ ${pedidoMoveis.calculaFrete()}');
  });
}
