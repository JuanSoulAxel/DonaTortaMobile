import 'package:flutter/material.dart';

/*GERAL:
esse arquivo ele é responsável por chamar a tela de etapas e ir modificando a cada clique nos botões anterior e próximo
*/

//como vamos fazer o controle de estado de variável vamos fazer desse StepForm um statefulwidget
class TelaEtapas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //essa classe StepFormState ela vai ter todo o conteúdo escrito abaixo
    return _TelaEtapas();
  }
}

class _TelaEtapas extends State<TelaEtapas> {
  //quando iniciamos uma variável com um "_" na frente o flutter entende que é uma variável privada
  final _stepFormController = PageController();

  //variável para verificar em qual estamos do array
  int _page = 0;

  //criando array
  List _pagesList = [
    //Passando o primeiro array = 0
    pageBody(
      'https://static.wixstatic.com/media/0a620d_ccf2d0f7eadd4dbcad9ab8d39b081267~mv2_d_1400_1400_s_2.png/v1/fill/w_332,h_332,al_c,q_85,usm_0.66_1.00_0.01/bal%C3%A3o.webp',
      'Salgados Fritos',
    ),

    //Passando  o segundo array = 1
    pageBody(
      'https://static.wixstatic.com/media/0a620d_06cedd868c084aff82110f3b31ec1212~mv2_d_1400_1400_s_2.png/v1/fill/w_332,h_332,al_c,q_85,usm_0.66_1.00_0.01/bal%C3%B5es_assados.webp',
      'Salgados Assados',
    ),

    //Passando o terceiro array = 2
    pageBody(
      'https://static.wixstatic.com/media/0a620d_b8512ef3ec514632a044741692306af0~mv2_d_1400_1400_s_2.png/v1/fill/w_347,h_347,al_c,q_85,usm_0.66_1.00_0.01/bal%C3%B5es_doces.webp',
      'Tortas e Doces',
    ),
  ];

  //essa função vai verificar se o usuário está querendo avançar ou voltar a página anterior
  void _changeStep(bool nextPage) {
    //se _page for menor que 2 e se usuário clicar no botão próximo
    if (_page < 2 && nextPage) {
      //essa função é utilizada para atualizar o valor da variável
      setState(() {
        //a cada clique o _page incrementa um
        _page++;
      });

      //acessar variável de controle e dentro já vai ter uma função chamada nextPage
      _stepFormController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }

    //se o usuário clicar no botão anterior
    //a página que for maior que zero e não estivermos indo para a próxima página, vamos voltar
    else if (_page > 0 && !nextPage) {
      //essa função é utilizada para atualizar o valor da variável
      setState(() {
        //a cada clique o _page incrementa um
        _page--;
      });

      //acessar variável de controle e dentro já vai ter uma função chamada previousPage
      _stepFormController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }

    //se o usuário já estiver na página final e clicar em próximo vai para a pagehome
    else if (_page == 2 && nextPage) {
      //passando a nova página por rota automática
      Navigator.of(context).pushReplacementNamed("/menu");
    }
  }

  @override
  Widget build(BuildContext context) {
    //esse widget Scaffold possui os atributos para auxiliar a montar a página
    return Scaffold(
      appBar: AppBar(
        title: Text('Dona Torta Caruaru'),
        backgroundColor: Colors.deepOrange,
      ),

      //no body (corpo) vamos exibir uma página que contém outras páginas dentro dela
      body: PageView.builder(
        //controller vai receber a variável final privada criada acima
        controller: _stepFormController,

        //código abaixo vai desabilitar o default do flutter de passar o dedo na tela e ir para a próxima página, deixando isso somente para a função do botão
        physics: NeverScrollableScrollPhysics(),

        //no itemBuilder é as páginas que vamos retornar
        itemBuilder: (BuildContext context, int index) {
          return _pagesList[index];
        },
      ),

      //criando botão de navegação entre as páginas
      //row vai mostrar uma linha em tela
      bottomNavigationBar: Row(
        //o código abaixo servirá para separá os FlatButton, o spaceBetween dará o máximo de espaço possível entre os dois
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        //no atributo children vamos passar os widgets que estarão nessa linha
        //onPressed é a função que será chamada quando clicado no botão
        children: [
          //botão para voltar
          FlatButton(
            //passando valor false para função _changeStep
            onPressed: () => _changeStep(false),
            color: Colors.deepOrangeAccent,
            child: Text('Anterior'),
          ),

          //instanciando o pageIndicator e no atributo precisamos passar se é a página principal ou não
          pageIndicator(_page == 0),
          pageIndicator(_page == 1),
          pageIndicator(_page == 2),

          //botão para avançar
          FlatButton(
            //passando valor true para função _changeStep
            onPressed: () => _changeStep(true),
            color: Colors.deepOrangeAccent,
            child: Text('Próximo'),
          ),
        ],
      ),
    );
  }
}

/*GERAL:
esse arquivo vai verificar qual é a tela que o usuário está e modificar alguns requisitos específicos quando estiver em determinada página
*/

//criar função que retorna um widget
//no construtor recebemos um valor boolean para dizer se estamos criando um widget e se é a página principal
Widget pageIndicator(bool currentPage) {
  return Container(
    //utilizando operador ternário. Se estiver na currentPage o valor vai ser maior = 15 e se não estiver na currentPage vai ser menor = 10
    width: currentPage ? 15 : 10,
    height: currentPage ? 15 : 10,

    decoration: BoxDecoration(
      //o raio é 12
      borderRadius: BorderRadius.circular(12),

      //utilizando novamente operador ternário. Se estiver na currentPage passa um valor mais escuro, se não estiver na currentPage passa um valor mais claro do preto
      color: currentPage ? Colors.deepOrange : Colors.orangeAccent,
    ),
  );
}

/*GERAL:
esse arquivo vai pegar dois parâmetros (imagem e titulo) passado pelo stepForm e modificar seu atributos
*/

Widget pageBody(String imgUrl, String title) {
  //criando padding para dar espaçamento
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      //Elementos exebidos na coluna estejam alinhados ao centro da tela
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        //recebendo imagem no imgUrl
        Image.network(imgUrl),

        //Texto da variável titulo
        Text(
          title,
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
