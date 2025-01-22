import '../repository/device.dart';

class Radio implements Device {
  @override
  getNome() {
    return 'RADIO';
  }

  @override
  ligar() {
    return false;
  }

  @override
  int getVolume() {
    return 10;
  }
}
