import 'package:flutter/material.dart';
import 'package:u1_video11_a_15_301/pages/bottom_nav_page.dart';
import 'package:u1_video11_a_15_301/pages/imagenes_page.dart';
import 'package:u1_video11_a_15_301/pages/lista_juegos.dart';
import 'package:u1_video11_a_15_301/pages/tabs/drawer_page.dart';
import 'package:u1_video11_a_15_301/pages/tabs_page.dart';

import 'pages/vid2021_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Vid2021Page(),
    );
  }
}
