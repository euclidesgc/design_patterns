///Classe de terceiros que não podemos alterar
class TopPagamentos {
  double _valor = 0.0;
  int _parcelas = 1;
  String _numeroCartao = '';
  String _cvv = '';

  void setValorTotal(double valor) {
    _valor = valor;
  }

  void setQuantidadeParcelas(int parcelas) {
    _parcelas = parcelas;
  }

  setCartao(String numeroCartao, String cvv) {
    _numeroCartao = numeroCartao;
    _cvv = cvv;
  }

  bool realizarPagamento() {
    print('Pagamento realizado com sucesso via TopPagamentos!');
    return true;
  }
}
