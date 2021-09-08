import 'package:flutter/material.dart';

class BotonPage extends StatefulWidget {
  BotonPage({Key? key}) : super(key: key);

  @override
  _BotonPageState createState() => _BotonPageState();
}

class _BotonPageState extends State<BotonPage> {
  int numero = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.android),
        title: Text('Ejemplo StatefullWidget'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'Valor: $numero',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  child: Text('Aumentar'),
                  onPressed: () {
                    print('Aumentar');
                    setState(() {
                      numero++;
                    });
                  },
                ),
                OutlinedButton(
                  child: Text('Decrementar'),
                  onPressed: () {
                    print('Decrementar');
                    setState(() {
                      numero--;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
