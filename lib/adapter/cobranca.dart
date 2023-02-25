import 'gateway.dart';

class Cobranca {
  Gateway _gateway;

  Cobranca(this._gateway);

  void setGateway(Gateway gateway) {
    _gateway = gateway;
  }

  void setValor(double valor) {
    _gateway.setValor(valor);
  }

  void setParcelas(int parcelas) {
    _gateway.setParcelas(parcelas);
  }

  void setNumeroCartao(String numeroCartao) {
    _gateway.setNumeroCartao(numeroCartao);
  }

  void setCVV(String cvv) {
    _gateway.setCVV(cvv);
  }

  bool realizarPagamento() {
    if (_gateway.validarCartao()) {
      if (_gateway.realizarPagamento()) {
        print('${_gateway.getName()}: Pagamento realizado com sucesso!');
        return true;
      } else {
        print('${_gateway.getName()}: Falha ao realizar o pagamento.');
        return false;
      }
    } else {
      print('${_gateway.getName()}: Cartão inválido.');
      return false;
    }
  }
}
