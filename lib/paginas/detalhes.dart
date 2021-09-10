import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/appbar.dart';
import 'package:lojinha_alura/widgets/card_detalhes.dart';

class Detalhes extends StatefulWidget {
  final Movel movel;

  Detalhes({this.movel});

  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('utilidades/assets/imagens/${widget.movel.foto}'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBarCustomizada(
              titulo: '',
              ehPaginaCarrinho: false,
            ),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.all(16),
                  height: 220,
                  child: CardDetalhes(
                    atualizaPagina: atualiza,
                    movel: widget.movel,
                  )),
            )));
  }

  atualiza() {
    setState(() {});
  }
}
