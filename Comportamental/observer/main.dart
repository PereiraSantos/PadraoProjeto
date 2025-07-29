import 'display/humidity_display.dart';
import 'display/temperature_display.dart';
import 'display/wind_display.dart';
import 'usercases/weather_station.dart';

main() {
  WeatherStation station = new WeatherStation();

  new TemperatureDisplay(station);
  new HumidityDisplay(station);
  new WindDisplay(station);

  station.setMeasurements(25.5, 60.0, 12);
  station.setMeasurements(28.0, 65.0, 10);
}
