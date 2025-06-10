import 'notificacao.dart';

abstract class NotificacaoDecorator implements Notificacao {
  final Notificacao _notificao;

  NotificacaoDecorator(this._notificao);

  @override
  void enviar(String mensagem) {
    _notificao.enviar(mensagem);
  }
}
