import '../usercases/observer.dart';
import '../usercases/subject.dart';

class HumidityDisplay implements Observer {
  Subject? weatherStation;

  HumidityDisplay(Subject weatherStation) {
    this.weatherStation = weatherStation;
    this.weatherStation!.attach(this);
  }

  @override
  void update(double temperature, double humidity, double wind) {
    print("Display de Umidade: umidade: $humidity %");
  }
}
