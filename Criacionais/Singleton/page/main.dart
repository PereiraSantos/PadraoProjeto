import '../usercases/cache.dart';
import '../usercases/pagination.dart';

void main(List<String> args) {
  Aplication session = Aplication();
  session.init();
  session.start();
  session.change();
  session.exit();

  print(Cache().paginations.toString());

  Aplication session2 = Aplication();
  session2.start();
  session2.change();
  session2.change();
  session2.exit();

  print(Cache().paginations.toString());
}

class Aplication {
  init() {
    Cache().reset = true;
  }

  start() {
    Cache().pagination = Pagination(Cache().paginations.isEmpty ? 1 : (Cache().paginations.last.key + 1), 20);
  }

  change() {
    Cache().pagination = Pagination((Cache().paginations.last.key + 1), 20);
  }

  exit() {
    print('Sair');
  }
}
