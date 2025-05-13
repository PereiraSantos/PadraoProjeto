class Home {
  String? window;
  String? door;
  String? garage;
  String? pool;
  String? garden;
  String? statues;

  void makeWindow() {
    window = 'Criado janela';
  }

  void makeDoor() {
    door = 'Criando porta';
  }

  void makeGarage() {
    garage = 'Criando garagem';
  }

  void makePool() {
    pool = 'Criando piscina';
  }

  void makeGarden() {
    garden = 'Criano jardin';
  }

  void makeStatues() {
    statues = 'Criando estatuas';
  }

  @override
  String toString() {
    return ' ${window} ${door} ${garage} ${pool} ${garden} ${statues}';
  }
}
