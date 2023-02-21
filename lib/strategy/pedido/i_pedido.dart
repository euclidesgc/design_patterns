import '../frete/i_frete.dart';

abstract class IPedido {
  final double valor;
  final IFrete frete;

  IPedido(this.valor, this.frete);

  calculaFrete() {
    return frete.calcula(valor);
  }
}
