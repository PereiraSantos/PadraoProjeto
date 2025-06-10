import '../notificacao.dart';

class EmailNotificacao implements Notificacao {
  @override
  void enviar(String mensagem) {
    print('Enviando e-mail: $mensagem');
  }
}
