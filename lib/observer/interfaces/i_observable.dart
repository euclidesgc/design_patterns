import 'i_observer.dart';

abstract class IObservable {
  List<IObserver> observers = [];

  void registerObserver(IObserver observer) {
    observers.add(observer);
  }

  void removeObserver(IObserver observer) {
    observers.remove(observer);
  }

  void notifyObservers() {
    for (IObserver element in observers) {
      element.update();
    }
  }
}
