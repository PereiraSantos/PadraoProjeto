import '../factory/config.dart';
import '../factory/i_config.dart';

class FullConfig extends Config implements IConfig {
  FullConfig.internal() : super.internal();

  @override
  void showType() => print('Instancia atual FULL');

  @override
  String title() => 'full';

  @override
  instace() => this;
}
