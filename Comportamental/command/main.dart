import 'usercases/aplicativo.dart';
import 'usercases/acao.dart';
import 'usercases/luz_inteligente.dart';

void main(List<String> args) {
  LuzInteligente luzQuarto = LuzInteligente('luz quarto');
  Acao acao = Acao(luzQuarto);

  acao.execulte();
  acao.almentaIntecidade();
  acao.almentaIntecidade();
  acao.almentaIntecidade();
  acao.undo();

  Aplicativo aplicativo = Aplicativo();
  aplicativo.addCommand('ligar', acao);
  aplicativo.execulteCommand('ligar');

  LuzInteligente luzSala = LuzInteligente('luz sala');
  acao = Acao(luzSala);

  acao.execulte();
  acao.almentaIntecidade();

  aplicativo.addCommand('ligar', acao);
  aplicativo.execulteCommand('ligar');
}
