import 'package:flutter/material.dart';

class JuegoMarioMaker extends StatelessWidget {
  const JuegoMarioMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Juego'),
      ),
      body: Center(
        child: Text('Mario Maker 2'),
      ),
    );
  }
}
