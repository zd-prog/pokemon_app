import 'package:flutter/material.dart';

class PokemonNameTitle extends StatelessWidget {
  final String pokemonName;
  const PokemonNameTitle({
    Key? key,
    required this.pokemonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
      child: Center(
        child: Text(
          pokemonName,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 25,
          ),
        ),
      ),
    );
  }
}
