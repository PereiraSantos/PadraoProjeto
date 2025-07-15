import 'image_edit.dart';
import 'memento.dart';

class ImageEditManager {
  List<Memento> _mementos = [];
  ImageEdit _imageEdit;

  ImageEditManager(this._imageEdit);

  set imageEdit(ImageEdit value) => _imageEdit = value;

  void backup() {
    _mementos.add(_imageEdit.save());
  }

  void undo() {
    Memento memento = _mementos.removeLast();

    if (_mementos.isEmpty) {
      print('Backup: não há objetos');
      return;
    }

    _imageEdit.restore(memento);
    print('backup ${memento.getName()} foi restaurado');
  }
}
