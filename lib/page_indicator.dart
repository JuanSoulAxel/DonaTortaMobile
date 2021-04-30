import 'package:flutter/material.dart';

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
