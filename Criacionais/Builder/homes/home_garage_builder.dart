import '../usercases/home.dart';
import '../usercases/home_builder.dart';

class HomeGarageBuilder implements HomeBuilder {
  Home _home = Home();

  @override
  setDoor() {
    _home.makeDoor();
  }

  @override
  setGarage() {}

  @override
  setGarden() {
    _home.makeGarage();
  }

  @override
  setPool() {}

  @override
  setStatues() {}

  @override
  setWindow() {
    _home.makeWindow();
  }

  Home getHome() => _home;
}
