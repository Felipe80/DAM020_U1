import 'package:flutter/material.dart';

class JuegoMariokart extends StatelessWidget {
  const JuegoMariokart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Juego'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Mario Kart Deluxe 8'),
            OutlinedButton(
              child: Text('Volver'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
