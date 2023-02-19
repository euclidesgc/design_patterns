import 'frete.dart';

class FreteComum implements Frete {
  @override
  double calcula(double valor) {
    return valor * 0.05;
  }
}
