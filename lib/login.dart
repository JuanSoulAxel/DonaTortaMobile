import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';

  Widget _body() {
    //Essa função vai fazer de Scroll tudo que estiver dentro dela, ou seja, vai deixar descer e subir os itens passando o dedo. Isso, caso o teclado do usuário ultrapasse a tela de digitar o login
    return SingleChildScrollView(
      child: SizedBox(
        //para dar tamanho  na tela inteira
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Padding(
          //criando padding para dar espalamento dos itens da Column
          padding: const EdgeInsets.all(10.0),

          child: Column(
            //alinhando no centro
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.asset('assets/icons/icondonatortacaruaru.png'),
              ),

              //espaçamento
              Container(height: 5),

              //criando card para ficar mais visível os itens para login
              Card(
                //dando cor com opacidade ao card
                color: Colors.white.withOpacity(0.8),

                child: Padding(
                  //o only, diferente do "all" ele deixa dar o espaçamento específico para todos os lados
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 20, bottom: 12),

                  //o card só aceita um child então, tivemos que criar essa column para utilizar children
                  child: Column(
                    children: [
                      //criando campo de texto para email
                      TextField(
                        //pegar o valor digitado e atribuir para a variável email
                        onChanged: (text) {
                          email = text;
                        },
                        //esse código deixa o teclado do usuário com caracteristicas para email
                        keyboardType: TextInputType.emailAddress,

                        //decorando campo de texto
                        decoration: InputDecoration(
                          //Criando nome login no campo
                          labelText: 'Email',

                          //formando borda
                          border: OutlineInputBorder(),
                        ),
                      ),

                      //dar espaçamento
                      SizedBox(height: 10),

                      //criando campo de texto par a senha
                      TextField(
                        //pegar o valor digitado e atribuir para a variável password
                        onChanged: (text) {
                          password = text;
                        },

                        //não mostrar senha na tela
                        obscureText: true,

                        //decorando campo de texto
                        decoration: InputDecoration(
                          //Criando nome login no campo
                          labelText: 'Password',

                          //formando borda
                          border: OutlineInputBorder(),
                        ),
                      ),

                      //dar espaçamento
                      SizedBox(height: 15),

                      //criando botão entrar
                      RaisedButton(
                        //cor e letra do botão
                        color: Colors.pink,
                        textColor: Colors.white,

                        //fazendo validação dos dados
                        onPressed: () {
                          if (email == 'donatorta.caruaru@gmail.com' &&
                              password == '123') {
                            //essa função abaixo será utilizada para navegar pra outra página
                            Navigator.of(context).pushReplacementNamed("/home");
                          } else {
                            print("Senha inválida");
                          }
                        },

                        //Criando Container para organizar o botão entrar
                        child: Container(
                          //vai esticar o máximo possível
                          width: double.infinity,
                          child: Text(
                            'Entrar',
                            //alinhar no centro
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //o stack empilha os itens colocados dentro do children um atrás do outro
      body: Stack(
        children: [
          //colocando imagem antes do body
          SizedBox(
            //pegando tamanho todo da tela
            height: double.infinity,

            //fit são formas que a imagem é desposta na tela e o cover ele dá um jeito pra esticar a imagem na tela toda
            child: Image.asset('assets/img/fundo-login.jpg', fit: BoxFit.cover),
          ),

          //usar opacidade para escurecer um pouco a tela
          Container(
            color: Colors.black.withOpacity(0.2),
          ),

          //chamando o body
          _body(),
        ],
      ),
    );
  }
}
