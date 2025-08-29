import '../factory/shape.dart';
import '../factory/visitor.dart';

class Circle implements Shape {
  final double radius;
  Circle({required this.radius});

  @override
  void accept(Visitor visitor) {
    visitor.visitCircle(this);
  }
}