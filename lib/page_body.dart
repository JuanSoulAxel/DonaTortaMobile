import 'package:flutter/material.dart';

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
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
