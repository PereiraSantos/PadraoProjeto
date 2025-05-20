import 'produto.dart';

class Item extends Produto {
  double preco;
  int quantidade;

  Item(this.preco, this.quantidade) : super();

  @override
  double getPreco() {
    return preco;
  }

  @override
  int getQuantidade() {
    return quantidade;
  }
}
