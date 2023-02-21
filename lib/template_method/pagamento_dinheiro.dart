import 'package:design_patterns/template_method/i_pagamento.dart';

class PagamentoDinheiro extends IPagamento {
  PagamentoDinheiro(super.valor, super.gateway);

  @override
  double calcularDesconto() {
    return super.valor * 0.1;
  }
}
