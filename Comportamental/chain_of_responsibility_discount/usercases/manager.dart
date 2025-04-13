import '../model/discount.dart';
import '../interface/handler.dart';

class Manager extends Handler {
  Discount handle(Discount discount) {
    if (discount.value < 50) {
      print('O gerente pode dar o desconto');
      discount.approved = true;
      return discount;
    }
    return super.handle(discount);
  }
}
