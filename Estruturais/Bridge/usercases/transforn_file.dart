import 'manipulate_file.dart';

class TransfornFile extends ManipulateFile {
  TransfornFile(super.fileFactory);

  convertFile() {
    var result = fileFactory.readFile();
    var tipo = result['padrao_projeto'];

    return {'Descrição': tipo['description']};
  }
}
