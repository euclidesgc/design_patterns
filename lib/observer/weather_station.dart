import 'interfaces/i_observable.dart';
import 'interfaces/i_observer.dart';

class WeatherStation implements IObservable {
  List<IObserver> observers = [];
  late int _temperatura;

  @override
  void registerObserver(IObserver observer) {
    observers.add(observer);
  }

  @override
  void removeObserver(IObserver observer) {
    observers.remove(observer);
  }

  @override
  void notifyObservers() {
    for (IObserver element in observers) {
      element.update();
    }
  }

  int get temperaturaAtual => _temperatura;

  set temperaturaAtual(int temperatura) {
    _temperatura = temperatura;
    notifyObservers();
  }
}
