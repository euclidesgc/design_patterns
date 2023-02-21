import 'package:design_patterns/observer/display_temp.dart';
import 'package:design_patterns/observer/weather_station.dart';
import 'package:test/test.dart';

void main() {
  late WeatherStation station;
  late DisplayTemp myPhone;
  late DisplayTemp myAlexa;
  late DisplayTemp mySmartWatch;

  setUp(() {
    station = WeatherStation();
    myPhone = DisplayTemp(station, 'Phone');
    myAlexa = DisplayTemp(station, 'Alexa');
    mySmartWatch = DisplayTemp(station, 'SmartWatch');
  });
  
  test('Observer', () async {
    station.registerObserver(myPhone);
    station.registerObserver(myAlexa);
    station.registerObserver(mySmartWatch);

    station.temperaturaAtual = 30;
    station.temperaturaAtual = 40;
    station.temperaturaAtual = 50;
  });
}
