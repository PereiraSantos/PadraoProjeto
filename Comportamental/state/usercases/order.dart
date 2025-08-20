import 'order_state_factory.dart';
import 'pending.dart';

class Order {
  OrderStateFactory _state = Pending();

  OrderStateFactory getState() {
    return _state;
  }

  setState(OrderStateFactory state) {
    _state = state;
  }

  String getStateName() {
    return _state.getName();
  }

  void approvePayment() {
    _state.aprovedPayment(this);
  }

  void rejectPayment() {
    _state.rejectPayment(this);
  }

  void waitPayment() {
    _state.waitPayment(this);
  }

  void shipOrder() {}
}
