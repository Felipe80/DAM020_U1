import 'package:flutter/material.dart';

class ColRowsPage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 30, color: Color(0xFFF75431));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Cols Rows'),
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFFD8DAB0),
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Uno',
                  style: estiloTexto,
                ),
                Text(
                  'Dos',
                  style: estiloTexto,
                ),
                Text(
                  'Tres',
                  style: estiloTexto,
                ),
                Text(
                  'Cuatro',
                  style: estiloTexto,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.face, size: 50),
              Icon(Icons.bug_report, size: 50),
              Icon(Icons.lightbulb, size: 50),
              Icon(
                Icons.android,
                size: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
