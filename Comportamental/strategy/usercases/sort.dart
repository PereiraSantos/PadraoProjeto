import 'algorithm.dart';

class Sort implements Algorithm {
  @override
  List<String> execute(List<String> list) {
    list.sort();
    return list;
  }
}
