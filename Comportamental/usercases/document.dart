
import 'package:flutter/material.dart';

abstract class Document {
  const Document();

  @protected
  void save();

  @protected
  bool open(){
    return true;
  }

  @protected
  void close();  

  @protected
  void doRead();

  void readDocument() {
    open();

    if (canOpenDocument()) {
      doRead();
    }

    save();
    close();  
  }

  bool canOpenDocument()=> open();
}

