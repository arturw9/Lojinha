import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  final bool ehPaginaCarrinho;

  AppBarCustomizada({this.titulo, this.ehPaginaCarrinho});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo, style: TextStyle(color: Colors.black)),
      titleSpacing: 0.0,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        _mudarPaginaCarrinho(ehPaginaCarrinho),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget _mudarPaginaCarrinho(bool ehPaginaCarrinho) {
    if (ehPaginaCarrinho) return Container();
    return BotaoCarrinho();
  }
}
