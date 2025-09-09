import 'model/celsius.dart';
import 'usercases/api.dart';
import 'usercases/service.dart';
import 'usercases/service_celsius.dart';

void main(List<String> args) {
  ServiceCelsius serviceCelsius = ServiceCelsius();

  ServiceTemperature serviceTemperature = ServiceTemperature(Api(70));

 Celsius celsius =  serviceCelsius.getTemperature(serviceTemperature);

 print("A temperatura é ${celsius.value.toStringAsPrecision(2)} graus");
}
