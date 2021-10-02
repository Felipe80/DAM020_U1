import 'package:flutter/material.dart';

class JuegoJurassicWorld extends StatelessWidget {
  const JuegoJurassicWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Juego'),
      ),
      body: Center(
        child: Text('Lego Jurassic World'),
      ),
    );
  }
}
