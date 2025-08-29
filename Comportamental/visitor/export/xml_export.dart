import '../usercases/circle.dart';
import '../usercases/rectangle.dart';
import '../usercases/square.dart';
import '../factory/visitor.dart';

class XmlExportVisitor implements Visitor {
  String xmlData = '';

  @override
  void visitCircle(Circle circle) {
    xmlData += '<Circle radius="${circle.radius}"/>';
  }

  @override
  void visitSquare(Square square) {
    xmlData += '<Square side="${square.side}"/>';
  }

  @override
  void visitRectangle(Rectangle rectangle) {
    xmlData += '<Rectangle width="${rectangle.width}" height="${rectangle.height}"/>';
  }
}