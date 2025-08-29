import 'usercases/circle.dart';
import 'export/json_export.dart';
import 'usercases/rectangle.dart';
import 'factory/shape.dart';
import 'usercases/square.dart';
import 'export/xml_export.dart';

void main() {

  final shapes = <Shape>[
    Circle(radius: 5.0),
    Square(side: 10.0),
    Rectangle(width: 8.0, height: 12.0),
  ];


  final jsonVisitor = JsonExportVisitor();
  final xmlVisitor = XmlExportVisitor();


  print('--- Exportando para JSON ---');
  for (final shape in shapes) {
    shape.accept(jsonVisitor);
  }
  print(jsonVisitor.jsonData);

  print('\n--- Exportando para XML ---');
  for (final shape in shapes) {
    shape.accept(xmlVisitor);
  }
  print(xmlVisitor.xmlData);
}
