import 'home.dart';

abstract interface class HomeBuilder {
  void setWindow();
  void setDoor();
  void setGarage();
  void setPool();
  void setGarden();
  void setStatues();
  Home getHome();
}
