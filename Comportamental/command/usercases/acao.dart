import 'command.dart';
import 'luz_inteligente.dart';

class Acao implements Command {
  LuzInteligente luzInteligente;

  Acao(this.luzInteligente);

  @override
  void execulte() {
    luzInteligente.on();
  }

  @override
  void undo() {
    luzInteligente.off();
  }

  void almentaIntecidade() {
    luzInteligente.almentaIntensidade();
  }

  void diminueIntencidade() {
    luzInteligente.diminueIntencidade();
  }
}
