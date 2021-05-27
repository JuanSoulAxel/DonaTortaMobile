import 'package:flutter/material.dart';

//essa função vai criar o appBar para reutilizar
Widget appBar() {
  return AppBar(
    //leading fica no início
    leading: IconButton(
      icon: Image.asset('assets/icons/torta.png'),
      onPressed: () {},
    ),
    //colocando titulo na appBar
    title: Text('Dona Torta Caruaru'),
    //cor do appBar
    backgroundColor: Colors.deepOrange,
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
  );
}
