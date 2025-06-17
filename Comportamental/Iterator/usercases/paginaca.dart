class Paginator<T> implements Iterator<T> {
  final Future<List<T>> Function({required int pagina, required int limite}) buscar_pagina;
  final int tamanho_pagina;

  List<T> _itens_pagina_atuais = [];
  int pagina_atual = 0;
  int indice_item_atual = -1;
  bool tem_mais_paginas = true;
  bool carregando_pagina = false;

  Paginator({
    required Future<List<T>> Function({required int pagina, required int limite}) buscar_pagina,
    required int tamanhoPagina,
  })  : buscar_pagina = buscar_pagina,
        tamanho_pagina = tamanhoPagina;

  @override
  T get current => _itens_pagina_atuais[indice_item_atual];

  @override
  bool moveNext() {
    if (indice_item_atual + 1 >= _itens_pagina_atuais.length) {
      if (!tem_mais_paginas || carregando_pagina) {
        return false;
      }
      carregando_pagina = true;
      pagina_atual++;

      buscar_pagina(pagina: pagina_atual, limite: tamanho_pagina).then((items) {
        _itens_pagina_atuais = items;
        carregando_pagina = false;
        if (items.isEmpty) {
          tem_mais_paginas = false;
        }
        indice_item_atual = -1;
      });

      return false;
    }

    indice_item_atual++;
    return true;
  }

  void resete() {
    _itens_pagina_atuais = [];
    pagina_atual = 0;
    indice_item_atual = -1;
    tem_mais_paginas = true;
    carregando_pagina = false;
  }

  Future<void> carregarPaginaInicial() async {
    resete();
    carregando_pagina = true;
    pagina_atual = 1;
    _itens_pagina_atuais = await buscar_pagina(pagina: pagina_atual, limite: tamanho_pagina);
    carregando_pagina = false;
    if (_itens_pagina_atuais.isEmpty) {
      tem_mais_paginas = false;
    }
  }
}
