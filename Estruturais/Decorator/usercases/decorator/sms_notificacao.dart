import '../notificacao.dart';
import '../notificacao_decorator.dart';

class SMSNotificacao extends NotificacaoDecorator {
  SMSNotificacao(Notificacao _notificao) : super(_notificao);

  @override
  void enviar(String mensagem) {
    super.enviar(mensagem);
    _enviaSMS(mensagem);
  }

  void _enviaSMS(String mensagem) {
    print('Enviando SMS: $mensagem');
  }
}
