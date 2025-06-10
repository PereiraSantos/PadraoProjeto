import '../notificacao.dart';
import '../notificacao_decorator.dart';

class WhatNotificacao extends NotificacaoDecorator {
  WhatNotificacao(Notificacao _notificao) : super(_notificao);

  @override
  void enviar(String mensagem) {
    super.enviar(mensagem);
    _enviaSMS(mensagem);
  }

  void _enviaSMS(String mensagem) {
    print('Enviando what: $mensagem');
  }
}
