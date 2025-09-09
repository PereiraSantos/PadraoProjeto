import '../model/fahrenheit.dart';

class Api {
  double value;

  Api(this.value);

  Fahrenheit getTempetarute(){
    return Fahrenheit(value);
  }
}