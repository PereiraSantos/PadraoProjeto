import '../interface/service_factory.dart';
import '../model/celsius.dart';
import '../model/fahrenheit.dart';

class ServiceCelsius {
Celsius  getTemperature(ServiceFactory serviceFactory){
 Fahrenheit fahrenheit =  serviceFactory.getTemperature();
  return Celsius((fahrenheit.value - 32) *5 / 9);
  }
}