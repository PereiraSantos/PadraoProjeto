import 'usercases/image_edit.dart';
import 'usercases/image_edit_manager.dart';

void main(List<String> args) {
  ImageEdit imageEdit = ImageEdit('teste/image', 'png');
  ImageEditManager backupManager = ImageEditManager(imageEdit);
  backupManager.backup();

  imageEdit = ImageEdit('teste/foto', 'jpg');

  backupManager.imageEdit = imageEdit;
  backupManager.backup();

  imageEdit = ImageEdit('teste1/foto1', 'jpg');

  backupManager.imageEdit = imageEdit;
  backupManager.backup();

  print(backupManager);
}
