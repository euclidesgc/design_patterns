import 'package:design_patterns/template_method/i_pagamento.dart';

class PagamentoCredito extends IPagamento {
  PagamentoCredito(super.valor, super.gateway);

  @override
  double calcularTaxa() {
    return super.valor * 0.05;
  }

  @override
  double calcularDesconto() {
    if (super.valor > 300) {
      return super.valor * 0.02;
    }
    return 0;
  }
}
