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
        title: Text('Ejemplo Stateful Widget'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            color: Colors.lightBlue,
            child: Text(
              'Valor: $numero',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            // color: Colors.lightGreen,
            margin: EdgeInsets.only(top: 30),
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  child: Text('Aumentar'),
                  onPressed: () {
                    // print('Aumentar');
                    setState(() {
                      numero++;
                    });
                  },
                ),
                OutlinedButton(
                  child: Text('Decrementar'),
                  onPressed: () {
                    // print('Decrementar');
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
