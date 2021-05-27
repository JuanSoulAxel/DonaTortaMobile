import 'package:dona_torta_caruaru/modelos/produtos.dart';
import 'package:flutter/material.dart';

class ComidaTituloComImagem extends StatelessWidget {
  const ComidaTituloComImagem({
    Key key,
    @required this.salgados,
  }) : super(key: key);

  final Product salgados;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //esse text vai mostrar o título
          Text(
            "SALGADOS FRITOS",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            //pegando o titulo do salgado selecionado
            salgados.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),

          //espaçamento
          SizedBox(height: 40),

          //esse vai mostrar o preço
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    //mostrar essa palavra e pular uma linha
                    TextSpan(text: "Preço \n"),
                    //vai mostrar e formatar o preço de cada item
                    TextSpan(
                      text: "\$${salgados.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),

              //dar espaçamento entre os itens da Row (preço e imagem)
              SizedBox(width: 40),

              //Para mostrar a imagem do item
              Container(
                width: 250,
                height: 200,
                child: Expanded(
                  child: Image.asset(salgados.image),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Text(
                    salgados.description,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
