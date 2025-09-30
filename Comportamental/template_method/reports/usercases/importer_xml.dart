import 'generate_reports.dart';

class ImporterXml extends GenerateReports{
  @override
  carregarDados() {
    print('Carregando dados financeiros de uma API externa...');
    return {'receita': 50000, 'despesa': 35000, 'impostos': 8000};
  }

  @override
  processarDados(dados) {
    print('Calculando lucro líquido...');
    final lucroLiquido = dados['receita'] - dados['despesa'] - dados['impostos'];
    return {'lucro_liquido': lucroLiquido};
  }

  @override
  String formatarRelatorio(dynamic dados) {
    return 'Resumo Financeiro:\nLucro Líquido: R\$${dados['lucro_liquido']}';
  }
}