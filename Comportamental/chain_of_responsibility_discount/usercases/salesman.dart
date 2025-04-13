import '../model/discount.dart';
import '../interface/handler.dart';

class Salesman extends Handler {
  Discount handle(Discount discount) {
    if (discount.value < 10) {
      print('O vendedor pode dar o desconto');
      discount.approved = true;
      return discount;
    }
    return super.handle(discount);
  }
}
