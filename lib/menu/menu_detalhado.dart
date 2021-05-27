import 'package:flutter/material.dart';
import '../modelos/produtos.dart';
import 'corpo_menu_detalhado.dart';

class MenuDetalhado extends StatelessWidget {
  //essa variável pega o arquivo de produtos.dart e criei um construtor pra ela
  final Product salgados;

  //o menu.dart vai passar por parâmetro o salgado clicado
  const MenuDetalhado({Key key, this.salgados}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //vai pegar a cor do salgado clicado
      backgroundColor: salgados.color,
      appBar: AppBar(
        backgroundColor: salgados.color,
        elevation: 0,
        actions: [
          //esses dois icones ficaram após o title
          IconButton(
            icon: Image.asset('assets/icons/lupa.png'),
            onPressed: () {},
          ),

          IconButton(
            icon: Image.asset('assets/icons/carrinho-de-compras.png'),
            onPressed: () {},
          ),
        ],
      ),
      //passando por parâmetro o Product salgados para o corpo
      body: CorpoMenuDetalhado(salgados: salgados),
    );
  }
}
