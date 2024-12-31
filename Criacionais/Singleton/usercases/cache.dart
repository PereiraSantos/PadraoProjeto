import 'pagination.dart';

class Cache {
  static final Cache _intance = Cache._internal();

  Cache._internal();

  factory Cache() {
    return _intance;
  }

  bool _reset = false;
  List<Pagination> _paginations = [];

  set reset(bool value) {
    if (value) _paginations = [];
    _reset = value;
  }

  bool get reset => _reset;

  set pagination(Pagination element) => _paginations.add(element);
  List<Pagination> get paginations => _paginations;
}
