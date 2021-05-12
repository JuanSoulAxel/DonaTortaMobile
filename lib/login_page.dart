import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Essa função vai fazer de Scroll tudo que estiver dentro dela, ou seja, vai deixar descer e subir os itens passando o dedo. Isso, caso o teclado do usuário ultrapasse a tela de digitar o login
      body: SingleChildScrollView(
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
                  child: Image.asset('assets/img/icondonatortacaruaru.png'),
                ),

                //espaçamento
                Container(height: 5),

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
                  child: Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
