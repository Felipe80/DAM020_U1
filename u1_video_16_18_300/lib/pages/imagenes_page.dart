import 'package:flutter/material.dart';
import 'package:u1_video_11_a_15_300/widgets/game_card.dart';

class ImagenesPage extends StatelessWidget {
  const ImagenesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Imágenes'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          GameCard(
            nombre: 'Lego Jurassic World',
            imagen: 'lego_jurassic_world.jpg',
            precio: '45.990',
          ),
          GameCard(
            nombre: 'Mario Kart 8',
            imagen: 'mario_kart_8_deluxe.jpg',
            precio: '59.990',
          ),
          GameCard(
            nombre: 'Mario Maker 2',
            imagen: 'mario_maker_2.jpg',
            precio: '50.990',
          ),
        ],
      ),
    );
  }
}
