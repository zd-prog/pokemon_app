import 'package:flutter/material.dart';
import 'package:pokemon_app/features/pokemons/presentation/pages/main_page/widgets/pokemon_list_view.dart';

class MainPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
      child: PokemonListView(),
    );
  }
}
