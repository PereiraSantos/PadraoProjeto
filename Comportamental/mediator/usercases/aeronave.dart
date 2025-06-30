import 'torre_controle.dart';

abstract class Aeronave {
  final TorreControle tore;
  final String identificador;

  Aeronave(this.tore, this.identificador);

  void receberMensagem();
  void enviarMensagem(String messagem);
}

class AeromavePiloto extends Aeronave {
  AeromavePiloto(super.tore, super.identificador);

  @override
  void receberMensagem() {
    print('$identificador mensagem recebida');
  }

  @override
  void enviarMensagem(String messagem) {
    print('$identificador piloto $messagem');
  }
}
