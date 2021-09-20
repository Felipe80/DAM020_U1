import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Lista3Page extends StatelessWidget {
  final peliculas = [
    {"titulo": "American in Paris, An", "genero": "Musical|Romance"},
    {"titulo": "Derek", "genero": "Documentary"},
    {
      "titulo": "Carnival in Flanders (La kermesse héroïque)",
      "genero": "Comedy|Romance"
    },
    {
      "titulo": "Wind Will Carry Us, The (Bad ma ra khahad bord)",
      "genero": "Drama"
    },
    {"titulo": "Everly", "genero": "Action|Thriller"},
    {
      "titulo": "Mrs. Brown (a.k.a. Her Majesty, Mrs. Brown)",
      "genero": "Drama|Romance"
    },
    {"titulo": "Storm", "genero": "Drama"},
    {"titulo": "Hum Tum", "genero": "Comedy|Drama|Musical|Romance"},
    {"titulo": "Listen to Britain", "genero": "Documentary"},
    {"titulo": "1001 Nights", "genero": "Adventure|Comedy|Fantasy"},
    {"titulo": "13 Tzameti", "genero": "Film-Noir|Thriller"},
    {"titulo": "The Invitation", "genero": "Drama|Horror|Thriller"},
    {"titulo": "Smile Like Yours, A", "genero": "Comedy|Romance"},
    {"titulo": "Purple Ball, The (Lilovyy shar)", "genero": "Fantasy|Sci-Fi"},
    {"titulo": "Rose Tattoo, The", "genero": "Drama|Romance"},
    {"titulo": "Casa de los babys", "genero": "Drama"},
    {"titulo": "Lawn Dogs", "genero": "Drama"},
    {"titulo": "Bandslam", "genero": "Comedy|Drama|Musical"},
    {"titulo": "Carry on Behind", "genero": "Comedy"},
    {"titulo": "Blow-Out (La grande bouffe)", "genero": "Drama"},
    {"titulo": "Ride with the Devil", "genero": "Drama|Romance|War"},
    {"titulo": "Jindabyne", "genero": "Crime|Drama|Mystery|Thriller"},
    {"titulo": "Our Dancing Daughters", "genero": "Drama"},
    {"titulo": "Texas Chainsaw Massacre, The", "genero": "Horror"},
    {"titulo": "Naked Harbour (Vuosaari)", "genero": "Drama"},
    {
      "titulo": "Atlantis: The Lost Empire",
      "genero": "Adventure|Animation|Children|Fantasy"
    },
    {
      "titulo": "Little Nemo: Adventures in Slumberland",
      "genero": "Adventure|Animation|Children|Drama|Fantasy"
    },
    {"titulo": "Kill Your Darlings", "genero": "Crime|Drama|Romance|Thriller"},
    {"titulo": "Déjà Vu (Deja Vu)", "genero": "Action|Sci-Fi|Thriller"},
    {"titulo": "Hit and Runway", "genero": "Comedy"},
    {
      "titulo": "Man on the Train (Homme du train, L')",
      "genero": "Comedy|Drama"
    },
    {"titulo": "Deceived", "genero": "Thriller"},
    {"titulo": "Stranger's Heart, A", "genero": "Drama"},
    {
      "titulo": "Let's Not Get Angry (Ne nous fâchons pas)",
      "genero": "Comedy|Crime"
    },
    {"titulo": "First Daughter", "genero": "Comedy|Romance|Thriller"},
    {"titulo": "Sidewalls (Medianeras)", "genero": "Drama"},
    {"titulo": "Night Will Fall", "genero": "Documentary"},
    {"titulo": "Pillow Book, The", "genero": "Drama|Romance"},
    {"titulo": "The Damned", "genero": "Horror|Mystery|Thriller"},
    {
      "titulo":
          "To Each His Own Cinema (Chacun son cinéma ou Ce petit coup au coeur quand la lumière s'éteint et que le film commence)",
      "genero": "Comedy|Drama"
    }
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
            color: Color(0xFF96D0D8),
            width: double.infinity,
            alignment: Alignment.center,
            height: 50,
            child: Text(
              'Películas Disponibles',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView(
              children: peliculas.map<Widget>((pelicula) {
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.sports),
                      trailing: Icon(
                        MdiIcons.movieRoll,
                        color: Color(0xFFF75431),
                      ),
                      title: Text(pelicula['titulo'].toString()),
                      subtitle: Text(pelicula['genero'].toString()),
                      onTap: () {
                        print(pelicula['titulo']);
                      },
                    ),
                    Divider(
                      thickness: 0.7,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
