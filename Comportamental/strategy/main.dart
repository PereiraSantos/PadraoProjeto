import 'usercases/filter.dart';
import 'usercases/manipule_text.dart';
import 'usercases/reverse.dart';
import 'usercases/sort.dart';

void main(List<String> args) {
  List<String> list = ['c', 'a', 'b', 'd', 'f', 'h', 'e', 'g'];

  ManipuleText manipuleText = ManipuleText();

  manipuleText.execute = Sort();
  List<String> result = manipuleText.executeText(list);
  print(result);

  manipuleText.execute = Reverse();
  result = manipuleText.executeText(result);
  print(result);

  manipuleText.execute = Filter('b');
  result = manipuleText.executeText(result);
  print(result);
}
