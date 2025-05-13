import '../homes/home_garage_builder.dart';
import '../homes/home_garden_builder.dart';
import '../usercases/home_creator.dart';

void main(List<String> args) {
  HomeCreator homeCreator = HomeCreator(HomeGardenBuilder());

  homeCreator.createHome();

  print(homeCreator.getHome().toString());

  homeCreator = HomeCreator(HomeGarageBuilder());

  homeCreator.createHome();

  print(homeCreator.getHome().toString());
}
