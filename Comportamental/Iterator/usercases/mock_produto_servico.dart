import 'produto.dart';

class MockProdutoServico {
  final int totalProduto = 50;

  Future<List<Produto>> buscaProduto({required int pagina, required int limite}) async {
    print('Simulando busca de produtos: Página $pagina, Limite $limite...');
    await Future.delayed(const Duration(seconds: 1));

    final int comecoIndex = (pagina - 1) * limite;
    if (comecoIndex >= totalProduto) {
      return [];
    }

    final int fimIndex = (comecoIndex + limite).clamp(0, totalProduto);
    final List<Produto> produtos = [];

    for (int i = comecoIndex; i < fimIndex; i++) {
      produtos.add(Produto(id: i + 1, nome: 'Produto ${i + 1}', preco: (i + 1) * 10.0));
    }

    return produtos;
  }
}
