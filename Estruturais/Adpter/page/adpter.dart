import '../model/product.dart';
import '../usercases/json/build_product_json.dart';
import '../usercases/product_adapter/product_adpter.dart';
import '../usercases/xml/build_product_xml.dart';

void main(List<String> args) {
  ProductAdpterJson productAdpterJson = ProductAdpterJson(BuildProductJson());
  ProductAdpterXml productAdpterXml = ProductAdpterXml(BuildProductXml());

  Product product = Product(1, "Notebook", 1200);
  Product product1 = Product(2, "Notebook", 1300);

  productAdpterJson.setProdut(product);
  productAdpterXml.setProdut(product);
  productAdpterJson.setProdut(product1);
  productAdpterXml.setProdut(product1);

  print(productAdpterJson.buildProductJson.products);
  print(productAdpterXml.buildProductXml.products);
}
