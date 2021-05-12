import 'package:flutter/material.dart';

class ListarSalgadosFritos extends StatefulWidget {
  @override
  _ListarSalgadosFritosState createState() => _ListarSalgadosFritosState();
}

class _ListarSalgadosFritosState extends State<ListarSalgadosFritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //colocando titulo na appBar
        title: Text('Dona Torta Caruaru'),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}
