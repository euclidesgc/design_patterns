import 'dart:math';

class Gateway {
  bool cobrar(double valor) {
    print('Cobrando $valor');
    return Random().nextBool();
  }
}
