import 'flower_type.dart';

class FlowerTypeBuild implements FlowerType {
  final String color;
  final int size;

  FlowerTypeBuild(this.color, this.size) {
    print('Criando um novo tipo de flor-> Cor:$color, Altura:$size centimetro');
  }

  @override
  void draw(double height, double width) {
    print('Desenhando flor ($color, $size) no jardin posição ($height, $width)');
  }
}
