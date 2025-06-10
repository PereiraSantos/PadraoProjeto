import '../interface/cliente.dart';
import '../interface/cria_cliente_veiculo.dart';
import '../interface/veiculo.dart';
import 'empresa_cliente.dart';
import 'empresa_veiculo.dart';

class CriaEmpresaCliente implements CriaClienteVeiculo {
  @override
  criaCliente(Cliente cliente) {
    return EmpresaCliente();
  }

  @override
  criaVeiculo(Veiculo veiculo, String nome) {
    Veiculo c = criaVeiculo(veiculo, nome);
    return EmpresaVeiculo();
  }
}
