import 'cliente.dart';
import 'veiculo.dart';

abstract class CriaClienteVeiculo {
  Cliente criaCliente(Cliente cliente);
  Veiculo criaVeiculo(Veiculo veiculo, String nome);
}
