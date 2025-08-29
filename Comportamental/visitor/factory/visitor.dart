import '../usercases/circle.dart';
import '../usercases/rectangle.dart';
import '../usercases/square.dart';

abstract class Visitor {
  void visitCircle(Circle circle);
  void visitSquare(Square square);
  void visitRectangle(Rectangle rectangle);
}