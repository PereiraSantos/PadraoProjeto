import '../../model/product.dart';

class BuildProductJson {
  List<Map<String, dynamic>> products = [];

  build(Product product) {
    products.add(toJson(product));
  }

  Map<String, dynamic> toJson(Product product) => {'id': product.id, 'descrição': product.description, 'valor': product.value};
}
