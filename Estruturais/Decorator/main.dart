import 'usercases/decoretor/firebase_notificacao.dart';
import 'usercases/decoretor/sms_notificao.dart';
import 'usercases/decoretor/what_nitificacao.dart';
import 'usercases/email/email_notificacao.dart';
import 'usercases/notificacao.dart';

void main(List<String> args) {
  Notificacao email = EmailNotificacao();
  email.enviar('Sua encomenda foi despachada!');

  Notificacao sms = SMSNotificacao(email);
  sms.enviar('Sua pedido foi confirmado!');

  Notificacao firabase = FirebaseNotificacao(email);
  firabase.enviar('Seu pedido saiu!');

  Notificacao what = WhatNotificacao(FirebaseNotificacao(email));
  what.enviar('Promoção imperdível!');
}
