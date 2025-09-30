import 'generate_reports.dart';

class ImporterJson extends GenerateReports{
  @override
  carregarDados() {
    print('Carregando dados de vendas do banco de dados...');
    return {'janeiro': 10000, 'fevereiro': 12500, 'março': 11000};
  }

  @override
  processarDados(dados) {
    print('Calculando total e média de vendas...');
    return {'total': 5000, 'media': 3.0};
  }
}