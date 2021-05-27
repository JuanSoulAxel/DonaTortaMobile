import 'package:flutter/material.dart';
import 'modelos/app_bar.dart';

/*GERAL:
esse será a página principal do site, após ser clicado no último "próximo" do stepForm virá pra essa página
*/

class Inicial extends StatefulWidget {
  //widget com estado (Stateful)
  @override
  State<Inicial> createState() {
    return InicialState();
  }
}

//precisamos criar uma outra classe para que possa ser retornado pra classe anterior e funcioncar como um estado que vai ser sempre modificado
class InicialState extends State<Inicial> {
  List<Image> salgadossFritos = [
    Image.asset('assets/img/coxinhas.png'),
    Image.asset('assets/img/kibi.png'),
    Image.asset('assets/img/pastel.png'),
    Image.asset('assets/img/batata-frita.png'),
    Image.asset('assets/img/bola-de-queijo.png'),
    Image.asset('assets/img/enroladinho.png'),
  ];

  List<Image> salgadosAssados = [
    Image.asset('assets/img/mini-pizzas.jpg'),
    Image.asset('assets/img/mini-pizzas.jpg'),
    Image.asset('assets/img/mini-pizzas.jpg'),
    Image.asset('assets/img/mini-pizzas.jpg'),
    Image.asset('assets/img/mini-pizzas.jpg'),
    Image.asset('assets/img/mini-pizzas.jpg'),
  ];

  List<Image> tortassDoces = [
    Image.asset('assets/img/torta-de-chocolate.png'),
    Image.asset('assets/img/torta-de-limao.png'),
    Image.asset('assets/img/beijinho.png'),
    Image.asset('assets/img/brigadeiro.png'),
    Image.asset('assets/img/torta-de-chocolate.png'),
    Image.asset('assets/img/torta-de-chocolate.png'),
  ];

  //Vamos retornar essa para o HomePage e do HomePage estanciamos dentro do Home na classe AppWidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //cabecalho
      appBar: appBar(),
      //corpo
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //dando espaçamento
            SizedBox(height: 10),

            //Fazendo titulo e imagens - SALGADOS FRITOS
            _tituloItens('SALGADOS FRITOS'),
            _tipoFotoSalgado(salgadossFritos),

            //dando espaçamento
            SizedBox(height: 10),

            //Fazendo titulo e imagens - SALGADOS ASSADOS
            _tituloItens('SALGADOS ASSADOS'),
            _tipoFotoSalgado(salgadosAssados),

            //dando espaçamento
            SizedBox(height: 10),

            //Fazendo titulo e imagens - TORTAS E DOCES
            _tituloItens('TORTAS E DOCES'),
            _tipoFotoSalgado(tortassDoces),

            //dando espaçamento
            SizedBox(height: 40),

            //Fazendo titulo para contatos
            _tituloItens('CONTATOS'),
          ],
        ),
      ),
      /*rodapé
      bottomSheet: Container(),*/
    );
  }
}

//Essa função vai passar o titulo do salgado e dos outros itens para reutilizar o código
Widget _tituloItens(String _nomeSalgado) {
  return Container(
    //vai ocupar todo espaço da tela
    width: double.infinity,
    height: 25,
    child: Text(
      _nomeSalgado,
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    color: Colors.deepOrange,
  );
}

//Essa função vai pegar o tipo do salgado e replicar na tela, para reutilizar o código
Widget _tipoFotoSalgado(List _salgado) {
  //Tive muito problema ao usar o ListView, porque tem que definir o tamanho com o "height" par anão dá problema
  return Container(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        //enquanto contador (i) for menor que quantidade de itens em _salgados, vai repetir
        for (var i = 0; i <= 5; i++)

          //Pra limitar o tamanho das imagens
          SizedBox(
            width: 140,
            height: 100,

            //usando padding para dar espaçamento
            child: Padding(
              padding: EdgeInsets.all(1.5),
              child: Container(
                child: _salgado[i],

                //criando borda em cada imagem
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
      ],
    ),
  );
}
