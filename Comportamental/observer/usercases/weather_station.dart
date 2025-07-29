import 'observer.dart';
import 'subject.dart';

class WeatherStation implements Subject {
  List<Observer> observers = [];
  double? temperature;
  double? humidity;
  double? wind;

  void attach(Observer observer) {
    observers.add(observer);
  }

  void detach(Observer observer) {
    observers.remove(observer);
  }

  void notifyObservers() {
    for (Observer observer in observers) {
      observer.update(temperature!, humidity!, wind!);
    }
  }

  void setMeasurements(double temperature, double humidity, double wind) {
    this.temperature = temperature;
    this.humidity = humidity;
    this.wind = wind;

    notifyObservers();
  }
}
