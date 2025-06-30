import 'usercases/aeronave.dart';
import 'usercases/torre_controle.dart';

void main(List<String> args) {
  final Torre torre = Torre();

  final AeromavePiloto aeromavePiloto = AeromavePiloto(torre, 'PR-987');
  final AeromavePiloto aeromavePiloto1 = AeromavePiloto(torre, 'PR-989');
  final AeromavePiloto aeromavePiloto2 = AeromavePiloto(torre, 'PR-989');

  aeromavePiloto.enviarMensagem('Pedido permisão para pousar');
  aeromavePiloto.receberMensagem();

  aeromavePiloto1.enviarMensagem('Pedido permisão para pousar');
  aeromavePiloto1.receberMensagem();

  aeromavePiloto2.enviarMensagem('Pedido permisão para pousar');
  aeromavePiloto2.receberMensagem();
}
