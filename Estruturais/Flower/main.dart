import 'usercases/flower.dart';

void main() {
  final flower1 = Flower(1, 2, 'amarela', 15);
  final flower2 = Flower(3, 5, 'verde', 17);
  final flower3 = Flower(7, 9, 'amarela', 15);
  final flower4 = Flower(10, 11, 'roxa', 10);
  final flower5 = Flower(13, 14, 'verde', 17);

  flower1.render();
  flower2.render();
  flower3.render();
  flower4.render();
  flower5.render();
}
