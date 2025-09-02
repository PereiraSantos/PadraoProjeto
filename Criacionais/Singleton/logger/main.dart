import 'logger.dart';
import 'registry.dart';

void main() {

  final logger = Registry.getInstance<Logger>(
    'main_logger',
    () => Logger.internal('AppLogger'),
  );

  logger.log('Aplicação iniciada.');

  final anotherLogger = Registry.getInstance<Logger>(
    'main_logger',
    () => Logger.internal('AnotherAppLogger'), 
  );

  anotherLogger.log('Este log vem da mesma instância.');


  final logger1 = Registry.getInstance<Logger>(
    'main_logger1',
    () => Logger.internal('Logger1'), 
  );

  logger1.log('Este log vem de ultra instância.');
}
