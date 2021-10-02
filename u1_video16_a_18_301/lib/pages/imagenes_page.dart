import 'package:flutter/material.dart';
import 'package:u1_video11_a_15_301/widgets/game_card.dart';

class ImagenesPage extends StatelessWidget {
  const ImagenesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imágenes'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          GameCard(
            imagen: 'mario_kart_8_deluxe.jpg',
            nombre: 'Mario Kart Deluxe 8',
            precio: '59.990',
          ),
          GameCard(
            imagen: 'lego_jurassic_world.jpg',
            nombre: 'Lego Jurassic World',
            precio: '44.990',
          ),
          GameCard(
            imagen: 'mario_maker_2.jpg',
            nombre: 'Mario Maker 2',
            precio: '55.990',
          ),
        ],
      ),
    );
  }
}
