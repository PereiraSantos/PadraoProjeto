import '../usercases/observer.dart';
import '../usercases/subject.dart';

class WindDisplay implements Observer {
  Subject? weatherStation;

  WindDisplay(Subject weatherStation) {
    this.weatherStation = weatherStation;
    this.weatherStation!.attach(this);
  }

  @override
  void update(double temperature, double humidity, double wind) {
    print("Display de vento: vento: $wind ~");
  }
}
