import 'produto.dart';

class Pedido extends Produto {
  List<Produto> produtos = [];

  @override
  add(Produto produto) {
    produtos.add(produto);
  }

  @override
  double getPreco() {
    double preco = 0;

    produtos.forEach((e) {
      preco += e.getPreco() * e.getQuantidade();
    });

    return preco;
  }

  @override
  remove(Produto produto) {
    produtos.remove(produto);
  }

  @override
  int getQuantidade() {
    return produtos.length;
  }
}
