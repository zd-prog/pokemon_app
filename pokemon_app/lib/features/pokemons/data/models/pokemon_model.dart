import 'package:pokemon_app/features/pokemons/domain/entities/pokemon.dart';

class PokemonModel extends Pokemon {
  const PokemonModel(
    String name,
    String url,
  ) : super(
          name: name,
          url: url,
        );

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        json['name'],
        json['url'],
      );

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{
      "name": name,
      "url": url,
    };

    return map;
  }
}
