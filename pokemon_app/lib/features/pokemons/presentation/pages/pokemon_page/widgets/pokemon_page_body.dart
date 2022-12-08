import 'package:flutter/material.dart';
import 'package:pokemon_app/features/pokemons/presentation/pages/pokemon_page/widgets/pokemon_details.dart';
import 'package:pokemon_app/features/pokemons/presentation/pages/pokemon_page/widgets/pokemon_name_title.dart';

class PokemonPageBody extends StatelessWidget {
  final String pokemonName;

  const PokemonPageBody({
    super.key,
    required this.pokemonName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PokemonNameTitle(
          pokemonName: pokemonName,
        ),
        Image.network(
          'https://legends.pokemon.com/assets/pokemon/pokemon_rowlet.png',
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.height / 4,
        ),
        const PokemonDetails(
          types: 'grass',
          height: 10,
          width: 10,
        ),
      ],
    );
  }
}
