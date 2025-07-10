import 'flower_type.dart';
import 'flower_type_factory.dart';

class Flower {
  final double height;
  final double width;
  final FlowerType _flowerType;

  Flower(this.height, this.width, String color, int size) : _flowerType = FlowerTypeFactory.getFlowerType(color, size);

  void render() {
    _flowerType.draw(height, width);
  }
}
