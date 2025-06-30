import 'aeronave.dart';

abstract class TorreControle {
  void enviarMensagem(String mensagem, Aeronave aeronave);
}

class Torre implements TorreControle {
  List<Aeronave> _aeronaves = [];

  void adicionarAeronave(Aeronave aeronave) {
    _aeronaves.add(aeronave);
  }

  @override
  void enviarMensagem(String mensagem, Aeronave aeronave) {
    print('$aeronave $mensagem');
  }
}
