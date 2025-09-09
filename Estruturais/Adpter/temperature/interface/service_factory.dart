import '../model/fahrenheit.dart';

abstract class ServiceFactory {
  Fahrenheit getTemperature();
}