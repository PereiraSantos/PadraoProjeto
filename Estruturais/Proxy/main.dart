import 'usercases/system_user_protocol.dart';
import 'usercases/system_user_proxy.dart';

void main(List<String> args) {
  SystemUserProtocol user = SystemUserProxy('Maria', 'Marciano Dos Santos');

  print("Isso vai levar 2 segundos");
  print(user.getAddresses());

  print("Isso vai se repetir (CACHE)");

  for (var i = 0; i < 5; i++) {
    print(user.getAddresses());
  }
}
