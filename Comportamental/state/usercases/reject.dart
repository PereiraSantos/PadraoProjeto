import 'order.dart';
import 'order_state_factory.dart';

class Reject implements OrderStateFactory {
  final String name = 'Rejeitado';

  Reject();

  @override
  void aprovedPayment(Order context) {
    print('Não posso aprovar o pagamento esta recusado');
  }

  @override
  String getName() => name;

  @override
  void rejectPayment(Order context) {
    print('Não posso aprovar o pagamento esta recusado');
  }

  @override
  void shipOrder(Order context) {
    print('pedido rejeitado');
  }

  @override
  void waitPayment(Order context) {
    print('Não posso aprovar o pagamento esta recusado.');
  }
}
