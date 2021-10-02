import 'package:flutter/material.dart';

class JuegoJurassicworld extends StatelessWidget {
  const JuegoJurassicworld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Juego'),
      ),
      body: Center(
        child: Text('Lego Jurassic Word'),
      ),
    );
  }
}
