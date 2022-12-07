import 'package:flutter/material.dart';
import 'package:pokemon_app/di/injection.dart';
import 'package:pokemon_app/features/pokemons/presentation/app/app.dart';

void main() {
  configureDependencies();
  runApp(PokemonApp());
}
