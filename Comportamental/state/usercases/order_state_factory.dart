import 'order.dart';

abstract class OrderStateFactory {
  String getName();
  void aprovedPayment(Order context);
  void rejectPayment(Order context);
  void waitPayment(Order context);
  void shipOrder(Order context);
}
