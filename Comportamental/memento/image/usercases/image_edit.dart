import 'memento_impl.dart';
import 'memento.dart';

class ImageEdit {
  String _filePath;
  String _fileFormat;

  ImageEdit(this._fileFormat, this._filePath);

  void convertFormatTo(String format) {
    this._fileFormat = format;
    this._filePath = this._filePath.split('.').sublist(0, -1).join('');
    this._filePath += '.' + format;
  }

  Memento save() {
    DateTime date = DateTime.now();
    return MementoImpl(date.toIso8601String(), date, this._filePath, this._fileFormat);
  }

  void restore(Memento memento) {
    final concreteMemento = memento as MementoImpl;
    this._filePath = concreteMemento.getFilePath();
    this._fileFormat = concreteMemento.getFileFormat();
  }
}
