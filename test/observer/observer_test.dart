import 'package:design_patterns/observer/display_temp.dart';
import 'package:design_patterns/observer/weather_station.dart';
import 'package:test/test.dart';

void main() {
  test('Observer', () async {
    
    WeatherStation station = WeatherStation();
    DisplayTemp myPhone = DisplayTemp(station, 'Phone');
    DisplayTemp myAlexa = DisplayTemp(station, 'Alexa');
    DisplayTemp mySmartWatch = DisplayTemp(station, 'SmartWatch');

    station.registerObserver(myPhone);
    station.registerObserver(myAlexa);
    station.registerObserver(mySmartWatch);

    station.temperaturaAtual = 30;
    station.temperaturaAtual = 40;
    station.temperaturaAtual = 50;
  });
}
