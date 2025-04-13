import '../model/discount.dart';
import '../interface/handler.dart';

class Director extends Handler {
  Discount handle(Discount discount) {
    if (discount.value < 70) {
      print('O diretor pode dar o desconto');
      discount.approved = true;
      return discount;
    }
    return super.handle(discount);
  }
}
