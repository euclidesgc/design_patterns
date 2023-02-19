import 'template_method/gateway.dart';

void main(List<String> arguments) {
  final gateway = Gateway();
  final valor = 100.0;
  print(gateway.cobrar(valor) ? 'Pagamento aprovado' : 'Pagamento recusado');
}
