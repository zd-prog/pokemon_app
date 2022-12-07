import 'package:flutter/material.dart';
import 'package:pokemon_app/features/pokemons/presentation/pages/main_page/main_page.dart';

class PokemonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon App',
      home: MainPage(),
    );
  }
}
