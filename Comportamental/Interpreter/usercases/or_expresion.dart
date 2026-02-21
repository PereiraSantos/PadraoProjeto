import '../factory/expresion.dart';

class OrExpresion implements Expresion {
  final Expresion _expresion1;
  final Expresion _expresion2;

  OrExpresion(this._expresion1, this._expresion2);

  @override
  bool interpret(String context) {
    return _expresion1.interpret(context) || _expresion2.interpret(context);
  }
}
