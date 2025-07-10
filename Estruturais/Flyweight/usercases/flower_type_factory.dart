import 'flower_type_build.dart';
import 'flower_type.dart';

class FlowerTypeFactory {
  static final Map<String, FlowerType> _flowerTypes = {};

  static FlowerType getFlowerType(String color, int size) {
    final key = '$color-$size';

    if (!_flowerTypes.containsKey(key)) _flowerTypes[key] = FlowerTypeBuild(color, size);

    return _flowerTypes[key]!;
  }
}
