import 'package:flutter/material.dart';
import 'package:pokemonapi/pages/home_page.dart';

class Appwidget extends StatelessWidget {
  const Appwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Navegação + Pacotes + API'),
            ),
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomePage(),
              ],
          ),
        )
      )
    );
  }
}
