import 'usercases/item.dart';
import 'usercases/pedido.dart';

void main(List<String> args) {
  Item camisa = Item(50, 1);
  Item bermuda = Item(70, 3);

  Pedido pedido = Pedido();
  pedido.add(camisa);
  pedido.add(bermuda);

  print(pedido.getPreco());
  print(pedido.getQuantidade());
}
