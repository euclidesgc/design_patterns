import 'package:design_patterns/template_method/gateway.dart';

abstract class IPagamento {
  final double valor;
  final Gateway gateway;

  IPagamento(this.valor, this.gateway);

  double calcularTaxa() => 0;

  calcularDesconto();

  bool realizarCobranca() {
    final valorFinal = valor + calcularTaxa() - calcularDesconto();

    print('Valor: R\$ $valor');
    print('Taxa: R\$ ${calcularTaxa()}');
    print('Desconto: R\$ ${calcularDesconto()}');
    print('Total: R\$ $valorFinal');

    return gateway.cobrar(valorFinal);
  }
}
