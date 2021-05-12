import 'package:flutter/material.dart';

/*GERAL:
esse será a página principal do site, após ser clicado no último "próximo" do stepForm virá pra essa página
*/

class HomePage extends StatefulWidget {
  //widget com estado (Stateful)
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

//precisamos criar uma outra classe para que possa ser retornado pra classe anterior e funcioncar como um estado que vai ser sempre modificado
class HomePageState extends State<HomePage> {
  List _salgadosFritos = [
    Image.asset('assets/img/coxinhas.jpg'),
    Image.asset('assets/img/bola-de-queijo.jpg'),
    Image.asset('assets/img/enroladinho.jpg'),
    Image.asset('assets/img/pasteiszinhos.jpg'),
    Image.asset('assets/img/batata-frita.jpg'),
    Image.asset('assets/img/kibi.jpg'),
    Image.asset('assets/img/rolinhos-de-queijo.jpg'),
  ];

  List _salgadosAssados = [
    Image.asset('assets/img/mini-pizzas.jpg'),
    Image.asset('assets/img/empada.jpg'),
    Image.asset('assets/img/torta-salgada.jpg'),
    Image.asset('assets/img/empada.jpg'),
    Image.asset('assets/img/canudinho-salpicao.jpg'),
  ];

  List _tortasDoces = [
    Image.asset('assets/img/torta-chocolate.jpg'),
    Image.asset('assets/img/torta-morango.jpg'),
    Image.asset('assets/img/torta-limao.jpg'),
    Image.asset('assets/img/brigadeiro.jpg'),
    Image.asset('assets/img/beijinho.jpg'),
  ];

  //Vamos retornar essa para o HomePage e do HomePage estanciamos dentro do Home na classe AppWidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //colocando titulo na appBar
        title: Text('Dona Torta Caruaru'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            //dando espaçamento
            SizedBox(height: 20),

            //Fazendo titulo e imagens - SALGADOS FRITOS
            _tipoNomeSalgado('SALGADOS FRITOS'),
            _tipoFotoSalgado(_salgadosFritos),

            FlatButton(
              //passando valor false para função _changeStep
              onPressed: () => {
                Navigator.of(context).pushReplacementNamed("/salgados-fritos"),
              },
              color: Colors.deepOrangeAccent,
              child: Text('Ver Mais...'),
            ),

            //dando espaçamento
            SizedBox(height: 20),

            //Fazendo titulo e imagens - SALGADOS ASSADOS
            _tipoNomeSalgado('SALGADOS ASSADOS'),
            _tipoFotoSalgado(_salgadosAssados),

            //dando espaçamento
            SizedBox(height: 20),

            _tipoNomeSalgado('TORTAS E DOCES'),
            _tipoFotoSalgado(_tortasDoces),
          ],
        ),
      ),
    );
  }
}

//Essa função vai passar o titulo do salgado para reutilizar o código
Widget _tipoNomeSalgado(String _nomeSalgado) {
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
        for (var i = 0; i < _salgado.length; i++)
          //usando padding para dar espaçamento
          Padding(
            padding: EdgeInsets.all(1.5),
            child: Container(
              //limitar a altura max e min das imagens
              constraints: BoxConstraints(minHeight: 100, maxHeight: 100),
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
      ],
    ),
  );
}
