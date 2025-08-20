import 'approved.dart';
import 'order.dart';
import 'order_state_factory.dart';
import 'reject.dart';

class Pending implements OrderStateFactory {
  final String name = 'Pedente';

  Pending();

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
    print('Enviamdo pagaemtento cliente');
  }

  @override
  void waitPayment(Order context) {
    print('o pedido está no estado pagamento pendente.');
  }
}
