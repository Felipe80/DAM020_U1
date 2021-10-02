import 'package:flutter/material.dart';

class BoxTitulo extends StatelessWidget {
  const BoxTitulo({
    this.titulo = "",
    Key? key,
  }) : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 5),
      child: Text(
        this.titulo,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
