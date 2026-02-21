import 'usercases/and_expresion.dart';
import 'usercases/or_expresion.dart';
import 'usercases/terminal_expresion.dart';

void main(List<String> args) {
  var dart = TerminalExpresion('Dart');
  var web = TerminalExpresion("Web");
  var mobile = TerminalExpresion("Mobile");

  var platforms = OrExpresion(web, mobile);

  var isDartDev = AndExpresion(dart, platforms);

  print("Teste 1 (Dart Web): ${isDartDev.interpret("Eu estudo Dart para Web")}");

  print("Teste 2 (Dart Mobile): ${isDartDev.interpret("Desenvolvedor Dart e Mobile")}");

  print("Teste 3 (Apenas Dart): ${isDartDev.interpret("Eu gosto de Dart puro")}");
}
