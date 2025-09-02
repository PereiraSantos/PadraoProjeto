class Logger {
  final String name;

  Logger.internal(this.name);

  void log(String message) {
    print('[$name] $message');
  }
}



