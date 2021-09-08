import 'package:flutter/material.dart';

class ColsRowsPage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 30, color: Color(0xFFF75431));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Col y Rows'),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            color: Colors.lightBlue,
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
          Container(
            margin: EdgeInsets.only(top: 20),
            // color: Colors.lightGreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.face, size: 50),
                Icon(Icons.bug_report, size: 50),
                Icon(Icons.lightbulb, size: 50),
                Icon(Icons.android, size: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
