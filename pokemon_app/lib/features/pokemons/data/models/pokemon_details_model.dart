import 'package:pokemon_app/features/pokemons/domain/entities/pokemon_details.dart';

class PokemonDetailsModel extends PokemonDetails {
  const PokemonDetailsModel(
    String name,
    String image,
    List<String> types,
    double weight,
    double height,
  ) : super(
          height: height,
          name: name,
          image: image,
          types: types,
          weight: weight,
        );

  factory PokemonDetailsModel.fromJson(Map<String, dynamic> json) =>
      PokemonDetailsModel(
        json['name'],
        json['front_default'],
        json['types'],
        json['weight'],
        json['height'],
      );
}
