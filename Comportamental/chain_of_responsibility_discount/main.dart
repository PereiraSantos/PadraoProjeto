import 'model/discount.dart';
import 'usercases/ceo.dart';
import 'usercases/director.dart';
import 'usercases/manager.dart';
import 'usercases/salesman.dart';

void main(List<String> args) {
  Discount discount = Discount(60);

  Salesman salesman = Salesman();

  salesman.setNextHandler(Manager()).setNextHandler(Director()).setNextHandler(CEO());

  print(salesman.handle(discount).value);
}
