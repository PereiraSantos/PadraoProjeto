import 'memento.dart';

class MementoImpl implements Memento {
  String _name;
  DateTime _date;
  String _filePath;
  String _fileFormat;

  MementoImpl(this._name, this._date, this._filePath, this._fileFormat);

  @override
  DateTime getDate() {
    return _date;
  }

  @override
  String getName() {
    return this._name;
  }

  String getFilePath() {
    return this._filePath;
  }

  String getFileFormat() {
    return this._fileFormat;
  }
}
