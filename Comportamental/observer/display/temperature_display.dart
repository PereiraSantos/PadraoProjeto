import '../usercases/observer.dart';
import '../usercases/subject.dart';

class TemperatureDisplay implements Observer {
  Subject? weatherStation;

  TemperatureDisplay(Subject weatherStation) {
    this.weatherStation = weatherStation;
    this.weatherStation!.attach(this);
  }

  @override
  void update(double temperature, double humidity, double wind) {
    print("Display de Temperatura: temperatura: $temperature °C");
  }
}
