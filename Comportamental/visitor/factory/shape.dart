import 'visitor.dart';

abstract class Shape {
  void accept(Visitor visitor);
}