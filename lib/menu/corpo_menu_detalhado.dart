import 'package:flutter/material.dart';
import 'package:dona_torta_caruaru/modelos/produtos.dart';
import 'imagem_titulo_comida.dart';

class CorpoMenuDetalhado extends StatelessWidget {
  final Product salgados;

  const CorpoMenuDetalhado({Key key, this.salgados}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //pra usar o total de height e width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            //size é a variável criada acima
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //para dar uma borda arredondada no Box
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                ComidaTituloComImagem(salgados: salgados),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
