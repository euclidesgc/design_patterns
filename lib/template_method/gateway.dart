import 'dart:math';

///Apenas para simular uma operação de cobrança
class Gateway {
  bool cobrar(double valor) {
    print('Cobrando $valor');
    return Random().nextBool();
  }
}
