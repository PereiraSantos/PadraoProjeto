import 'service/message.dart';
import 'usercases/email.dart';
import 'usercases/sms.dart';
import 'usercases/what.dart';

void main(List<String> args) {
  Message message = Message(Sms());
  message.sendMessage();

  message = Message(What());
  message.sendMessage();

  message = Message(Email());
  message.sendMessage();
}
