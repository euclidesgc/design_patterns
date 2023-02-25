import 'package:design_patterns/adapter/cobranca.dart';
import 'package:design_patterns/adapter/payment_adapters/pag_facil_adapter.dart';
import 'package:design_patterns/adapter/payment_adapters/top_pagamentos_adapter.dart';
import 'package:design_patterns/adapter/payment_gateways/top_pagamentos.dart';
import 'package:test/test.dart';

void main() {
  final topPagamentos = TopPagamentos();
  final pagFacilAdapter = PagFacilAdapter();
  final topPagamentosAdapter = TopPagamentosAdapter(
    topPagamentos: topPagamentos,
  );

  test('Adapter', () async {
    Cobranca cobranca = Cobranca(pagFacilAdapter);
    cobranca.setValor(100);
    cobranca.setParcelas(2);
    cobranca.setNumeroCartao('123456789');
    cobranca.setCVV('123');

    cobranca.realizarPagamento();

    cobranca = Cobranca(topPagamentosAdapter);
    cobranca.setValor(100);
    cobranca.setParcelas(2);
    cobranca.setNumeroCartao('123456789');
    cobranca.setCVV('123');

    cobranca.realizarPagamento();
  });
}
