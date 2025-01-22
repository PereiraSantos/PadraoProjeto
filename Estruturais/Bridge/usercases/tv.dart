import '../repository/device.dart';

class Tv implements Device {
  @override
  getNome() {
    return 'TV';
  }

  @override
  ligar() {
    return true;
  }

  @override
  int getVolume() {
    return 19;
  }
}
