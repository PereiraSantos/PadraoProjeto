import 'admin_user.dart';
import '../model/system_user_address_protocol.dart';
import 'system_user_protocol.dart';

class SystemUserProxy implements SystemUserProtocol {
  String firstName;
  String username;
  SystemUserProtocol? realUser;
  List<SystemUserAddressProtocol> realUserAddresses = [];

  SystemUserProxy(this.firstName, this.username);

  @override
  List<SystemUserAddressProtocol> getAddresses() {
    realUser = createUser();

    if (realUserAddresses.isEmpty) realUserAddresses = realUser!.getAddresses();

    return realUserAddresses;
  }

  SystemUserProtocol? createUser() {
    if (realUser == null) realUser = new AdminUser(firstName, username);

    return realUser;
  }
}
