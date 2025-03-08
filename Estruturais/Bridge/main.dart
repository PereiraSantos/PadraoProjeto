import 'usercases/json.dart';
import 'usercases/manipulate_file.dart';
import 'usercases/transforn_file.dart';
import 'usercases/xml.dart';

void main(List<String> args) {
  ManipulateFile saveFile = ManipulateFile(Xml());
  print(saveFile.read());

  saveFile = ManipulateFile(Json());
  print(saveFile.read());

  TransfornFile transfornFile = TransfornFile(Json());
  print(transfornFile.convertFile());
}
