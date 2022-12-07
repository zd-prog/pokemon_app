import 'package:flutter/material.dart';
import 'package:pokemon_app/core/ui/widgets/app_bar.dart';

class PokemonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PokemonAppBar(),
    );
  }
}
