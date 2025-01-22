import '../usercases/controle_remoto.dart';
import '../usercases/radio.dart';
import '../usercases/tv.dart';

void main(List<String> args) {
  Tv tv = Tv();

  ControleRemoto controleRemoto = ControleRemoto(tv);
  bool ligado = controleRemoto.setLigar();
  if (ligado) controleRemoto.almentaVolume();

  Radio radio = Radio();

  ControleRemoto controleRemotoRadio = ControleRemoto(radio);
  ligado = controleRemotoRadio.setLigar();
  if (ligado) controleRemoto.almentaVolume();
}
