class LuzInteligente {
  int intencidade = 1;
  String nome;

  LuzInteligente(this.nome);

  void on() {
    print('Ligar $nome');
  }

  void off() {
    print('Desligar $nome');
  }

  void almentaIntensidade() {
    print('$nome intencidade ${intencidade++} ');
  }

  void diminueIntencidade() {
    print('$nome intencidade ${intencidade--} ');
  }
}
