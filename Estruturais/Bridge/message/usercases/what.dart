import '../interface/message_factory.dart';

class What implements MessageFactory {
  @override
  sendMessage() {
    print('Ola WHAT');
  }
}
