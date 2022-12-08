import 'package:flutter/material.dart';

class PokemonListTile extends StatelessWidget {
  final String pokemonName;

  const PokemonListTile({
    super.key,
    required this.pokemonName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        pokemonName,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.height / 20,
        ),
      ),
    );
  }
}
