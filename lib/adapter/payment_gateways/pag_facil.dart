///Classe de terceiros que não podemos alterar
class PagFacil {
  double valor = 0.0;
  int parcelas = 0;
  String numeroCartao = '';
  String cvv = '';

  PagFacil();

  void setValor(double valor) {
    this.valor = valor;
  }

  void setParcelas(int parcelas) {
    this.parcelas = parcelas;
  }

  void setNumeroCartao(String numeroCartao) {
    this.numeroCartao = numeroCartao;
  }

  void setCVV(String cvv) {
    this.cvv = cvv;
  }

  bool validarCartao() {
    if (numeroCartao.isNotEmpty && cvv.isNotEmpty && cvv.length == 3) {
      return true;
    } else {
      return false;
    }
  }

  bool realizarPagamento() {
    print('Pagamento realizado com sucesso via PagFacil!');
    return true;
  }
}
