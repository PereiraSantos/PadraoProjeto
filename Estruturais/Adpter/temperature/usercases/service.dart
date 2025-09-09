import '../interface/service_factory.dart';
import '../model/fahrenheit.dart';
import 'api.dart';

class ServiceTemperature implements ServiceFactory{

  Api api;

  ServiceTemperature(this.api);

  @override
  Fahrenheit getTemperature() {
    return api.getTempetarute();
  }


  
}