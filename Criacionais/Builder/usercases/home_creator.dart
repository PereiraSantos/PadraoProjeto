import 'home.dart';
import 'home_builder.dart';

class HomeCreator {
  final HomeBuilder homeBuilder;

  HomeCreator(this.homeBuilder);

  void createHome() {
    homeBuilder.setDoor();
    homeBuilder.setPool();
    homeBuilder.setGarden();
    homeBuilder.setStatues();
    homeBuilder.setWindow();
  }

  Home getHome() => homeBuilder.getHome();
}
