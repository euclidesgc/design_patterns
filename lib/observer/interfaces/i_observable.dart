import 'i_observer.dart';

abstract class IObservable {
  void registerObserver(IObserver observer);

  void removeObserver(IObserver observer);

  void notifyObservers();
}
