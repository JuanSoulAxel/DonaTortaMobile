import 'package:flutter/material.dart';
import './produtos.dart';

//mostrando as categorias
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Salgados Fritos",
    "Salgados Assados",
    "Tortas e Doces",
    "Bebidas Quentes",
    "Bebidas Frias",
  ];

  int selectedIndex = 0;
  List comida;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            //para ficar na horizontal
            scrollDirection: Axis.horizontal,
            //categories é o nome do array, pegando a quantidade do array pra repetir
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index)),
      ),
    );
  }

  //essa função vai organizar o Categories()
  Widget buildCategory(int index) {
    //essa GestureDetector vai modificar com o set para marcar o item que está selecionado
    return GestureDetector(
      onTap: () {
        setState(() {
          //sempre que for clicado em um item do List categories diferente ele vai modificar
          selectedIndex = index;

          /*condições para mostrar corretamente os itens
          if (selectedIndex == 0) {
            comida = salgadosFritos;
          }
          if (selectedIndex == 1) {
            comida = tortasDoces;
          }*/
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          //pra o traço começar no início
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                //se estiver selecionando o item vai ficar uma cor mais escuar senão vai ficar uma cor de pretoa mais clara
                color: selectedIndex == index ? Colors.black87 : Colors.black54,
              ),
            ),
            //esse container vai mostrar um traço abaixo dos itens
            Container(
              margin: EdgeInsets.only(top: 25 / 4),
              height: 2,
              width: 30,
              //se estiver selecionado o item, o traço vai ser cor preta senão ele desaparece
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
