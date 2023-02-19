import 'package:design_patterns/template_method/pagamento.dart';

class PagamentoDinheiro extends Pagamento {
  PagamentoDinheiro(super.valor, super.gateway);

  @override
  double calcularDesconto() {
    return super.valor * 0.1;
  }
}
