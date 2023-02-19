import 'package:design_patterns/template_method/gateway.dart';
import 'package:design_patterns/template_method/pagamento_credito.dart';
import 'package:design_patterns/template_method/pagamento_debito.dart';
import 'package:design_patterns/template_method/pagamento_dinheiro.dart';
import 'package:test/test.dart';

void main() {
  test('Template Method', () async {
    final valor = 1000.00;
    final gateway = Gateway();

    print('>>>>>>>>> Crédito:');
    PagamentoCredito pagamentoCredito = PagamentoCredito(valor, gateway);

    print(pagamentoCredito.realizarCobranca()
        ? 'Pagamento aprovado'
        : 'Pagamento recusado');
    print('\n');

    print('>>>>>>>>> Débito:');
    PagamentoDebito pagamentoDebito = PagamentoDebito(valor, gateway);
    print(pagamentoDebito.realizarCobranca()
        ? 'Pagamento aprovado'
        : 'Pagamento recusado');
    print('\n');

    print('>>>>>>>>> Dinheiro:');
    PagamentoDinheiro pagamentoDinheiro = PagamentoDinheiro(valor, gateway);
    print(pagamentoDinheiro.realizarCobranca()
        ? 'Pagamento aprovado'
        : 'Pagamento recusado');
  });

  test('', () async {
    //Arrange

    //Act

    //Assert
  });
}
