class SystemUserAddressProtocol {
  String street;
  int nunber;

  SystemUserAddressProtocol(this.street, this.nunber);

  @override
  String toString() {
    return 'street: $street, number $nunber';
  }
}
