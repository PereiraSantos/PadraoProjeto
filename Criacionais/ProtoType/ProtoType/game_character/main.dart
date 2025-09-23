import 'model/character.dart';

void main(List<String> args) {
  Character soldier = Character('Mario', 40, 10, 90, 80, ['Pistola, Faca']);

  Character magie = soldier.clone();
  magie.setName('Luis');
  magie.setInventory(['Cajado']);

  Character paladin = magie.clone();
  paladin.setName('Jose');
  paladin.setInventory(['Espada, Escudo']);

  print(soldier.toString());
  print(magie.toString());
  print(paladin.toString());
}
