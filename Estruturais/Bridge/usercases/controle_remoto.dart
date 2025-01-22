import '../repository/device.dart';

class ControleRemoto {
  final Device device;

  ControleRemoto(this.device);

  bool setLigar() {
    print('${device.getNome()} ligado ${device.ligar() ? 'SIM' : 'NÂO'}');
    return device.ligar();
  }

  void getNome() {
    print(device.getNome());
  }

  void almentaVolume() {
    int v = device.getVolume();
    print('VOLUME ${v} ALMENTA PARA ${v + 1}');
  }
}
