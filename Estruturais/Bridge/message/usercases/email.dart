import '../interface/message_factory.dart';

class Email implements MessageFactory {
  @override
  sendMessage() {
    print('Ola EMAIL');
  }
}
