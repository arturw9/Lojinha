import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/paginas/detalhes.dart';
import 'package:lojinha_alura/widgets/degrade_elemento_grid_produtos.dart';
import 'package:lojinha_alura/widgets/imagem_elemento_grid_produtos.dart';
import 'package:lojinha_alura/widgets/titulo_elemento_grid_produtos.dart';

class ElementoGridProdutos extends StatefulWidget {
  final Movel movel;
  final Function atualiza;

  ElementoGridProdutos({this.movel, this.atualiza});

  @override
  _ElementoGridProdutosState createState() => _ElementoGridProdutosState();
}

class _ElementoGridProdutosState extends State<ElementoGridProdutos> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detalhes(movel: widget.movel),
          ),
        ).then(
          (value) => widget.atualiza(),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12,
            )
          ],
        ),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ImagemElementoGridProdutos(imagem: widget.movel.foto),
              DegradeElementoGridProdutos(),
              TituloElementoGridProdutos(titulo: widget.movel.titulo)
            ],
          ),
        ),
      ),
    );
  }
}
