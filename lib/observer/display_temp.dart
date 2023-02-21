import 'package:design_patterns/observer/weather_station.dart';

import 'interfaces/i_observer.dart';

class DisplayTemp implements IObserver {
  final WeatherStation station;
  final String name;

  DisplayTemp(this.station, this.name);

  @override
  void update() {
    print('$name: ${station.temperaturaAtual}');
  }
}
