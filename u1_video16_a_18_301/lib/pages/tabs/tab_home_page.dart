import 'package:flutter/material.dart';

class TabHomePage extends StatelessWidget {
  const TabHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
