import '../interface/do_clone.dart';

class Character implements DoClone {
  String name;
  double life;
  double manna;
  double attack;
  double defense;
  List<String> inventory;

  Character(
    this.name,
    this.life,
    this.manna,
    this.attack,
    this.defense,
    this.inventory,
  );

  @override
  clone() {
    return Character(
      this.name,
      this.life,
      this.manna,
      this.attack,
      this.defense,
      this.inventory,
    );
  }

  void setName(String value) => name = value;
  void setInventory(List<String> list) => inventory = list;

  @override
  toString() => 'Nome $name, Life: $life, Mana $manna, Ataque $attack, defesa $defense, Inventario $inventory';
}
