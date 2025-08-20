import 'usercases/order.dart';

void main(List<String> args) {
  final Order order = Order();

  order.waitPayment();
  order.approvePayment();
  order.shipOrder();
  order.rejectPayment();
}
