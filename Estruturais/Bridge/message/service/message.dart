import '../interface/message_factory.dart';

class Message {
  final MessageFactory messageFactory;

  Message(this.messageFactory);

  sendMessage() {
    return messageFactory.sendMessage();
  }
}
