import 'package:pokemon_app/features/pokemons/domain/entities/pokemon_details.dart';

class PokemonDetailsModel extends PokemonDetails {
  const PokemonDetailsModel(
    String name,
    String image,
    String url,
    List<String> types,
    double weight,
    double height,
  ) : super(
          height: height,
          name: name,
          image: image,
          types: types,
          weight: weight,
          url: url,
        );

  factory PokemonDetailsModel.fromJson(Map<String, dynamic> json) =>
      PokemonDetailsModel(
        json['name'],
        json['front_default'],
        '',
        json['types'],
        json['weight'],
        json['height'],
      );
}
