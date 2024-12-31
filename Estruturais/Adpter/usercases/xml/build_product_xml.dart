import '../../model/product.dart';

class BuildProductXml {
  String products = '''
  <?xml version="1.0"?> 
    <products>
  ''';
  String closeXml = '''
  </products> 
  ''';

  build(Product product) {
    products = products + toXml(product) + closeXml;
  }

  String toXml(Product product) => '''
      <product>
        <id> ${product.id} </id>
        <descrição> ${product.description} </descrição>
        <valor> ${product.value} </valor>
      </product>
  ''';
}
