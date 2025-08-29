import '../factory/shape.dart';
import '../factory/visitor.dart';

class Square implements Shape {
  final double side;
  Square({required this.side});

  @override
  void accept(Visitor visitor) {
    visitor.visitSquare(this);
  }
}