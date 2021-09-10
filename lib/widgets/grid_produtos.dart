import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/elemento_grid_produtos.dart';

class GridProdutos extends StatelessWidget {
  final Function atualiza;
  final moveis;

  GridProdutos({this.moveis, this.atualiza});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int indice) {
        final movel = Movel.fromJson(moveis[indice]);

        return ElementoGridProdutos(movel: movel, atualiza: atualiza);
      },
    );
  }
}
