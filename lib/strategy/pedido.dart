import 'frete.dart';

abstract class Pedido {
  final double valor;
  final Frete frete;

  Pedido(this.valor, this.frete);

  calculaFrete() {
    return frete.calcula(valor);
  }
}
