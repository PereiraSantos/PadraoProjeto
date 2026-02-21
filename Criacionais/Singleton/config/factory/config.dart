import 'i_config.dart';

abstract class Config {
  static Config? _instance;

  final Map<String, dynamic> _settings = {};

  Config.internal();

  factory Config(IConfig type) {
    if (_instance == null || _instance.runtimeType != type.runtimeType) _instance = type.instace();

    return _instance!;
  }

  void set(String key, dynamic value) => _settings[key] = value;
  dynamic get(String key) => _settings[key];

  void showType();
}
