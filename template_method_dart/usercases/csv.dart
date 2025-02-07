import 'dart:convert';
import 'dart:io';
import 'document.dart';

class Csv extends Document {
                        
  @override
  bool readDocument() {
    print("Ler documento");
    String? a = stdin.readLineSync(encoding: utf8);
    if (a != null && a.toLowerCase() == 'yes') {
      return true;
    } else {
      return false;
    }
  }
  
  @override
  void close() {}
  
  @override
  void doRead() {}
  
  @override
  bool open() => true;
  
  @override
  void save() {}

}