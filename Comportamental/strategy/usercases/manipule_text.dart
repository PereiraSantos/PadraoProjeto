import 'algorithm.dart';

class ManipuleText {
  late Algorithm _algorithm;

  set execute(Algorithm algorithm) => _algorithm = algorithm;

  List<String> executeText(List<String> list) => _algorithm.execute(list);
}
