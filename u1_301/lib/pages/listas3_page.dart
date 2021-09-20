import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Listas3Page extends StatelessWidget {
  final equipos = [
    {'nombre': 'Santiago Wanderers', 'ciudad': 'Valparaíso'},
    {'nombre': 'Universidad Católica', 'ciudad': 'Santiago'},
    {'nombre': 'Universidad de Concepción', 'ciudad': 'Concepción'},
  ];

  final peliculas = [
    {"titulo": "Fargo", "genero": "Comedy|Crime|Drama|Thriller"},
    {"titulo": "The Little Matchgirl", "genero": "Animation"},
    {"titulo": "Resident, The", "genero": "Drama|Horror|Thriller"},
    {"titulo": "Million to Juan, A", "genero": "Comedy"},
    {"titulo": "Hell (L'enfer)", "genero": "Drama"},
    {"titulo": "Perkele! Kuvia Suomesta", "genero": "Documentary"},
    {"titulo": "51", "genero": "Horror|Sci-Fi"},
    {
      "titulo":
          "Evangelion: 2.0 You Can (Not) Advance (Evangerion shin gekijôban: Ha)",
      "genero": "Action|Animation|Drama|Sci-Fi"
    },
    {
      "titulo": "Remember the Daze (Beautiful Ordinary, The)",
      "genero": "Comedy|Drama"
    },
    {"titulo": "Crips and Bloods: Made in America", "genero": "Documentary"},
    {"titulo": "Sleepless in Seattle", "genero": "Comedy|Drama|Romance"},
    {"titulo": "Windtalkers", "genero": "Action|Drama|War"},
    {"titulo": "The Open Road", "genero": "Documentary"},
    {"titulo": "Kings of the Road (Im Lauf der Zeit)", "genero": "Drama"},
    {
      "titulo": "Robin-B-Hood (Bo bui gai wak)",
      "genero": "Action|Comedy|Drama"
    },
    {"titulo": "Free Samples", "genero": "Comedy|Drama"},
    {"titulo": "Wyoming Renegades", "genero": "Romance|Western"},
    {"titulo": "Being Flynn", "genero": "Comedy|Drama"},
    {"titulo": "Chain Letter", "genero": "Horror|Mystery|Thriller"},
    {"titulo": "Alien Raiders", "genero": "Mystery|Sci-Fi|Thriller"},
    {"titulo": "Invisible Man, The", "genero": "Horror|Sci-Fi"},
    {"titulo": "Inbetweeners Movie, The", "genero": "Adventure|Comedy"},
    {"titulo": "Who's Your Caddy?", "genero": "Comedy"},
    {"titulo": "Interview, The", "genero": "Crime|Drama|Mystery|Thriller"},
    {"titulo": "Merry War, A", "genero": "Comedy"},
    {"titulo": "Tyrannosaur", "genero": "Drama"},
    {"titulo": "Bonnie Scotland (Heroes of the Regiment)", "genero": "Comedy"},
    {
      "titulo": "Bread and Tulips (Pane e tulipani)",
      "genero": "Comedy|Drama|Romance"
    },
    {
      "titulo": "Goke, Body Snatcher from Hell (Kyuketsuki Gokemidoro)",
      "genero": "Horror|Sci-Fi"
    },
    {"titulo": "Ladies Man, The", "genero": "Comedy"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas 3'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            color: Color(0xFFE0DFDF),
            child: Text(
              'Películas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: peliculas.map<Widget>((pelicula) {
                return ListTile(
                  leading: Icon(
                    Icons.movie,
                    color: Color(0xFF1F6096),
                  ),
                  trailing: Icon(
                    MdiIcons.movieRoll,
                    color: Color(0xFFC10037),
                  ),
                  title: Text(pelicula['titulo'].toString()),
                  subtitle: Text(pelicula['genero'].toString()),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
