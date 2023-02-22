abstract class Gateway {
  void setValor(double valor);
  void setParcelas(int parcelas);
  void setNumeroCartao(String numeroCartao);
  void setCVV(String cvv);
  bool validarCartao();
  bool realizarPagamento();
}