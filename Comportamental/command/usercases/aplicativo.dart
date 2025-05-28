import 'command.dart';

class Aplicativo {
  Map<String, Command> casaCommands = {};

  Aplicativo();

  void addCommand(String chave, Command casaCommand) {
    casaCommands[chave] = casaCommand;
  }

  void execulteCommand(String chave) {
    casaCommands[chave]!.execulte;
  }

  void undoCommand(String chave) {
    casaCommands[chave]!.undo;
  }
}
