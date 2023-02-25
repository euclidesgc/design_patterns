import '../gateway.dart';
import '../payment_gateways/top_pagamentos.dart';

class TopPagamentosAdapter implements Gateway {
  final TopPagamentos topPagamentos;
  String? _cvv;
  String? _numeroCartao;

  TopPagamentosAdapter({
    required this.topPagamentos,
  });

  @override
  bool realizarPagamento() {
    return topPagamentos.realizarPagamento();
  }

  @override
  void setCVV(String cvv) {
    _cvv = cvv;
    if (_numeroCartao != null) {
      topPagamentos.setCartao(_numeroCartao!, cvv);
    }
  }

  @override
  void setNumeroCartao(String numeroCartao) {
    _numeroCartao = numeroCartao;

    if (_cvv != null) {
      topPagamentos.setCartao(numeroCartao, _cvv!);
    }
  }

  @override
  void setParcelas(int parcelas) {
    topPagamentos.setQuantidadeParcelas(parcelas);
  }

  @override
  void setValor(double valor) {
    topPagamentos.setValorTotal(valor);
  }

  @override
  bool validarCartao() {
    return true;
  }

  @override
  String getName() {
    return 'TopPagamentos';
  }
}
