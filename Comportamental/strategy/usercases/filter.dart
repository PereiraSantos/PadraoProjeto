import 'algorithm.dart';

class Filter implements Algorithm {
  String key;

  Filter(this.key);

  @override
  List<String> execute(List<String> list) {
    return list.where((e) => e == key).toList();
  }
}
