abstract class GenerateReports {
  void gerarRelatorio() {
    print('Iniciando a geração do relatório...');
    final dados = carregarDados();
    final dadosProcessados = processarDados(dados);
    final relatorioFinal = formatarRelatorio(dadosProcessados);
    salvarRelatorio(relatorioFinal);
    print('Relatório finalizado com sucesso!');
  }

  dynamic carregarDados();

  dynamic processarDados(dynamic dados);

  String formatarRelatorio(dynamic dados) {
    return 'Relatório formatado: $dados';
  }

  void salvarRelatorio(String relatorio) {
    print('Salvando relatório...');
    print(relatorio);
  }
}
