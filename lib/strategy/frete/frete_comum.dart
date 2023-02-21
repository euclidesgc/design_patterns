import 'i_frete.dart';

class FreteComum implements IFrete {
  @override
  double calcula(double valor) {
    return valor * 0.05;
  }
}
