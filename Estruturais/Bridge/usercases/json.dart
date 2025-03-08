import 'file.dart';

class Json implements FileFactory {
  @override
  readFile() {
    return {
      'padrao_projeto': {'type': 'estrutural', 'description': 'Bridge'}
    };
  }

  @override
  saveFile() {
    return 'Registrado xml com sucesso';
  }
}
