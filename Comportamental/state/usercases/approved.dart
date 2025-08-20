import 'order.dart';
import 'order_state_factory.dart';
import 'pending.dart';
import 'reject.dart';

class Approved implements OrderStateFactory {
  final String name = 'Aprovado';

  Approved();

  @override
  void aprovedPayment(Order context) {
    context.setState(Approved());
  }

  @override
  String getName() => name;

  @override
  void rejectPayment(Order context) {
    context.setState(Reject());
  }

  @override
  void shipOrder(Order context) {
    print('pedido pendente');
  }

  @override
  void waitPayment(Order context) {
    context.setState(Pending());
  }
}
