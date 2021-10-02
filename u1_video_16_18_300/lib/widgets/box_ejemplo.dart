import 'package:flutter/material.dart';

class BoxEjemplo extends StatelessWidget {
  const BoxEjemplo({
    this.texto = "",
    this.color = 0xFF0000FF,
    this.ancho = 100,
    this.alto = 100,
    Key? key,
  }) : super(key: key);

  final String texto;
  final int color;
  final double ancho, alto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.ancho,
      height: this.alto,
      alignment: Alignment.center,
      color: Color(this.color),
      child: Text(
        this.texto,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
