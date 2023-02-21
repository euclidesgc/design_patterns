import 'package:design_patterns/template_method/i_pagamento.dart';

class PagamentoDebito extends IPagamento {
  PagamentoDebito(super.valor, super.gateway);

  @override
  double calcularTaxa() {
    return 4.0;
  }

  @override
  double calcularDesconto() {
    return super.valor * 0.05;
  }
}
