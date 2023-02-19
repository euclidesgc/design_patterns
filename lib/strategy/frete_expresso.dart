import 'frete.dart';

class FreteExpresso implements Frete {
  @override
  double calcula(double valor) {
    return valor * 0.1;
  }
}
