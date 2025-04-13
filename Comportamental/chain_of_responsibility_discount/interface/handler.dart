import '../model/discount.dart';

abstract class Handler {
  Handler? nextHandler;

  Handler setNextHandler(Handler handler) {
    this.nextHandler = handler;
    return handler;
  }

  Discount handle(Discount discount) {
    if (nextHandler != null) return nextHandler!.handle(discount);
    return discount;
  }
}
