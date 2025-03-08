import 'file.dart';

class ManipulateFile {
  final FileFactory fileFactory;

  ManipulateFile(this.fileFactory);

  read() {
    return fileFactory.readFile();
  }

  register() {
    return fileFactory.saveFile();
  }
}
