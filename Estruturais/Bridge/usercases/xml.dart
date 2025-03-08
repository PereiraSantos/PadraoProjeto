import 'file.dart';

class Xml implements FileFactory {
  @override
  readFile() {
    return '''
    <?xml version="1.0">
    <padrao_projeto>
      <tipo>
        <descricao> Bridge </descricao>
      </tipo>
    </padrao_projeto>
    ''';
  }

  @override
  saveFile() {
    return 'Registrado xml com sucesso';
  }
}
