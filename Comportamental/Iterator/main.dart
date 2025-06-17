import 'usercases/mock_produto_servico.dart';
import 'usercases/paginaca.dart';
import 'usercases/produto.dart';

void main(List<String> args) async {
  final paginacao = Paginator<Produto>(buscar_pagina: MockProdutoServico().buscaProduto, tamanhoPagina: 10);

  print('Carregando a primeira página...');
  await paginacao.carregarPaginaInicial();

  print('\nIterando pelos produtos:');
  while (paginacao.moveNext()) {
    print(paginacao.current);
  }

  print('\nTentando carregar mais, se disponível...');
  while (paginacao.moveNext()) {
    print(paginacao.current);
  }

  print('\nRe-iterando para simular novo carregamento (ou outra interação):');

  await paginacao.carregarPaginaInicial();
  while (paginacao.moveNext()) {
    print(paginacao.current);
  }
}
