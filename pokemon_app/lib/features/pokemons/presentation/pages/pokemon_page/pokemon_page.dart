import 'package:flutter/material.dart';
import 'package:pokemon_app/core/ui/widgets/app_bar.dart';
import 'package:pokemon_app/features/pokemons/presentation/pages/pokemon_page/widgets/pokemon_page_body.dart';

class PokemonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PokemonAppBar(),
      body: const PokemonPageBody(
        pokemonName: 'Pokemon name',
      ),
    );
  }
}
