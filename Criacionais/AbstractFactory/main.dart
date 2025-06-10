import 'interface/veiculo.dart';
import 'usercases/cria_empresa_cliente.dart';
import 'usercases/cria_empresa_veiculo.dart';
import 'usercases/empresa_veiculo.dart';

void main(List<String> args) {
  CriaEmpresaCliente criaEmpresaCliente = CriaEmpresaCliente();
  CriaEmpresaVeiculo criaEmpresaVeiculo = CriaEmpresaVeiculo();

  Veiculo carro = criaEmpresaCliente.criaVeiculo(EmpresaVeiculo(), 'Gol');
  Veiculo carro1 = criaEmpresaVeiculo.criaVeiculo(EmpresaVeiculo(), 'Fusca');

  print(carro.pickUp);
  print(carro1.pickUp);
}
