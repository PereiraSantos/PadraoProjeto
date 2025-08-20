import 'algorithm.dart';

class Reverse implements Algorithm {
  @override
  List<String> execute(List<String> list) {
    return list.reversed.toList();
  }
}
