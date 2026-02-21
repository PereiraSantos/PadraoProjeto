import '../factory/config.dart';
import '../factory/i_config.dart';

class LiteConfig extends Config implements IConfig {
  LiteConfig.internal() : super.internal();

  @override
  void showType() => print('Instancia atual LITE');

  @override
  String title() => 'lite';

  @override
  instace() => this;
}
