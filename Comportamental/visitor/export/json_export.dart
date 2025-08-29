


import '../usercases/circle.dart';
import '../usercases/rectangle.dart';
import '../usercases/square.dart';
import '../factory/visitor.dart';

class JsonExportVisitor implements Visitor {
  String jsonData = '';

  @override
  void visitCircle(Circle circle) {
    jsonData += '{ "type": "Circle", "radius": ${circle.radius} }';
  }

  @override
  void visitSquare(Square square) {
    jsonData += '{ "type": "Square", "side": ${square.side} }';
  }

  @override
  void visitRectangle(Rectangle rectangle) {
    jsonData += '{ "type": "Rectangle", "width": ${rectangle.width}, "height": ${rectangle.height} }';
  }
}

