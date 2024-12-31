import '../../model/product.dart';
import '../json/build_product_json.dart';
import '../xml/build_product_xml.dart';

abstract class IProductAdpter {
  void setProdut(Product product);
}

class ProductAdpterJson implements IProductAdpter {
  final BuildProductJson buildProductJson;

  ProductAdpterJson(this.buildProductJson);

  @override
  void setProdut(Product product) {
    buildProductJson.build(product);
  }
}

class ProductAdpterXml implements IProductAdpter {
  final BuildProductXml buildProductXml;

  ProductAdpterXml(this.buildProductXml);
  @override
  void setProdut(Product product) {
    buildProductXml.build(product);
  }
}
