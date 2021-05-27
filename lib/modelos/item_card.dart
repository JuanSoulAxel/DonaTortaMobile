import 'package:dona_torta_caruaru/modelos/produtos.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  //essa variável vai formar corretamente o salgado
  final Product salgados;
  final Function press;
  const ItemCard({
    Key key,
    this.salgados,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //esse container vai mostrar os itens do cardápio
            Container(
              padding: EdgeInsets.all(20),
              width: 150,
              height: 160,

              //esse box vai montar os itens do cardápio
              decoration: BoxDecoration(
                color: salgados.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(salgados.image),
            ),

            //Text do título
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                salgados.title,
                style: TextStyle(color: Colors.black),
              ),
            ),

            //Text do valor
            Text(
              "\$${salgados.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
