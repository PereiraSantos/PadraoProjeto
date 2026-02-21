import '../factory/expresion.dart';

class TerminalExpresion implements Expresion {
  final String _data;

  TerminalExpresion(this._data);

  @override
  bool interpret(String context) {
    return context.contains(_data);
  }
}
