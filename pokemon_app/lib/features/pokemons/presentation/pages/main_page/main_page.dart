import 'package:flutter/material.dart';
import 'package:pokemon_app/core/ui/widgets/app_bar.dart';
import 'package:pokemon_app/features/pokemons/presentation/pages/main_page/widgets/main_page_body.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PokemonAppBar(),
      body: MainPageBody(),
    );
  }
}
