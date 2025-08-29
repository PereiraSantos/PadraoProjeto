import '../factory/shape.dart';
import '../factory/visitor.dart';

class Rectangle implements Shape {
  final double width;
  final double height;
  
  Rectangle({required this.width, required this.height});

  @override
  void accept(Visitor visitor) {
    visitor.visitRectangle(this);
  }
}