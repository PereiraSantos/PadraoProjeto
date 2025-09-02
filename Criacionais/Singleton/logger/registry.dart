class Registry {

  static final Map<String, dynamic> _instances = {};

  static T getInstance<T>(String key, T Function() factory) {
    if (!_instances.containsKey(key)) {
      _instances[key] = factory();
    }
    return _instances[key] as T;
  }
}