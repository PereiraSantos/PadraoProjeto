import '../model/system_user_address_protocol.dart';
import 'system_user_protocol.dart';

class AdminUser implements SystemUserProtocol {
  String firstName;
  String username;

  AdminUser(this.firstName, this.username);

  @override
  List<SystemUserAddressProtocol> getAddresses() {
    return [SystemUserAddressProtocol('Av. Brasil', 50), SystemUserAddressProtocol('Rua A', 40)];
  }
}
