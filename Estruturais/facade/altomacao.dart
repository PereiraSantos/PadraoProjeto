import 'usercases/luz.dart';
import 'usercases/seguranca.dart';
import 'usercases/termostato.dart';

class Altomacao {
  final Luz _luz;
  final Seguranca _seguranca;
  final Termostato _termostato;

  Altomacao()
      : _luz = Luz(),
        _seguranca = Seguranca(),
        _termostato = Termostato();

  void iniciarDia() {
    print("\n--- Iniciando o dia ---");
    _luz.liga();
    _seguranca.desarma();
    _termostato.ligar();
  }

  void sairCasa() {
    print("\n--- Saindo de casa ---");
    _luz.desligar();
    _termostato.desligar();
    _seguranca.arma();
  }
}
