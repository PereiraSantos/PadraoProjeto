import '../interface/message_factory.dart';

class Sms implements MessageFactory {
  @override
  sendMessage() {
    print('Ola SMS');
  }
}
