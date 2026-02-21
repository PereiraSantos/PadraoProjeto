import 'factory/config.dart';
import 'usercases/full_config.dart';
import 'usercases/lite_config.dart';

void main(List<String> args) {
  var appConfig = Config(FullConfig.internal());
  appConfig.showType();

  appConfig.set('api_url', 'https:api.fullversion.com');
  appConfig.set('timeout', 30);

  var secondConfig = Config(LiteConfig.internal());
  secondConfig.showType();

  print("URL da API na segunda referência: ${secondConfig.get('api_url')}");

  print("Mesmo objeto? ${identical(appConfig, secondConfig)}");
}
