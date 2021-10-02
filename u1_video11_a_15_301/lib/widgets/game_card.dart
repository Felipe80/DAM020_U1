import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String imagen, nombre, precio;

  GameCard({this.imagen = "", this.nombre = "", this.precio = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Image(
            width: 310,
            image: AssetImage('assets/images/juegos/' + this.imagen),
          ),
          Text(
            this.nombre,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '\$ ' + this.precio,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
