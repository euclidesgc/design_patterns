import 'i_frete.dart';

class FreteExpresso implements IFrete {
  @override
  double calcula(double valor) {
    return valor * 0.1;
  }
}
