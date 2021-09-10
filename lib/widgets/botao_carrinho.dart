import 'package:flutter/material.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/widgets/indicador_botao_carrinho.dart';

class BotaoCarrinho extends StatefulWidget {
  @override
  _BotaoCarrinhoState createState() => _BotaoCarrinhoState();
}

class _BotaoCarrinhoState extends State<BotaoCarrinho> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho')
            .then((value) => setState(() {}));
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: 30, left: 20),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              topLeft: Radius.circular(100),
            ),
          ),
          child: _visibilidadeIndicadorCarrinho()),
    );
  }

  _visibilidadeIndicadorCarrinho() {
    if (Inicio.itensCarrinho.length > 0) {
      return Stack(children: [
        Image(
          image: AssetImage('utilidades/assets/icones/carrinho.png'),
          height: 30,
        ),
        IndicadorBotaoCarrinho()
      ]);
    }
    return Image(
      image: AssetImage('utilidades/assets/icones/carrinho.png'),
      height: 30,
    );
  }
}
