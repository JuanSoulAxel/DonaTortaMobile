import 'package:flutter/material.dart';
import './step_form.dart';
import './home_page.dart';
import './login_page.dart';
import './home_page_fritos.dart';

/*GERAL:
esse arquivo é responsável somente por chamar a página inicial do site
*/

void main() {
  //runApp executa o widget inicial
  runApp(Main());
}

//essa é uma classe abstrata que possui todas essas implementações dos widgets
class Main extends StatelessWidget {
  //tem que sobescrever um método e esse método é o método build. Ele é responsável por retornar o Widget
  @override
  Widget build(BuildContext context) {
    //MaterialApp ele monta a base para a criação do app
    return MaterialApp(
      //título do app
      title: 'Dona Torta Caruaru',
      //home é o widget inicial, a página que vamos chamar primeiro quando o app for iniciado

      //Definindo a rota inicial
      initialRoute: '/',
      //Para trabalhar com as Rotas Noemadas utiliza-se:
      routes: {
        '/': (context) => StepForm(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/salgados-fritos': (context) => ListarSalgadosFritos(),
      },
    );
  }
}
