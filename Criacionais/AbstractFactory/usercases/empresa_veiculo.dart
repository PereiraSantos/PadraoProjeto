import '../interface/veiculo.dart';

class EmpresaVeiculo implements Veiculo {
  EmpresaVeiculo() : super();
  @override
  void pickUp() {
    print('Empresa veiculo');
  }
}
