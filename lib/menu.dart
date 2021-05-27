import 'package:flutter/material.dart';
import './modelos/app_bar.dart';
import 'menu/menu_detalhado.dart';
import 'modelos/categories.dart';
import 'modelos/item_card.dart';
import 'modelos/produtos.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //chamando o appBar criado na home_page.dart
      appBar: appBar(),
      body: BodyMenu(),
    );
  }
}

//PRIMEIRA PARTE DO CORPO
class BodyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //pra o título ir pro início
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          //o only, diferente do "all" ele deixa dar o espaçamento específico para todos os lados
          padding: const EdgeInsets.only(left: 15, top: 20, bottom: 10),
          child: Text(
            "SELECIONE",
            style: Theme.of(context)
                //o headline vai aumentar o tamanho cada vez q o número for menor e o copy vai colocar o negrito
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),

        //chamando o ItemCard feito abaixo
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: GridView.builder(
              //contando quantos products tem no salgadossFritos
              itemCount: salgadosFritos.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                //vai passar o valor pra variável criada em ItemCard()
                salgados: salgadosFritos[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuDetalhado(
                      salgados: salgadosFritos[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
