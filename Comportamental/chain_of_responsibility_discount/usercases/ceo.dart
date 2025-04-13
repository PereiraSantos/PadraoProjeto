import '../model/discount.dart';
import '../interface/handler.dart';

class CEO extends Handler {
  Discount handle(Discount discount) {
    if (discount.value < 100) {
      print('Não pode dar desconto acima de ${discount.value} ');
      discount.approved = true;
      return discount;
    }
    return super.handle(discount);
  }
}
