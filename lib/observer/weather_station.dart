import 'interfaces/i_observable.dart';

class WeatherStation extends IObservable {
  late int _temperatura;

  int get temperaturaAtual => _temperatura;

  set temperaturaAtual(int temperatura) {
    _temperatura = temperatura;
    notifyObservers();
  }
}
