import 'package:pokemon_app/features/pokemons/domain/entities/pokemon_details.dart';

class PokemonDetailsModel extends PokemonDetails {
  const PokemonDetailsModel(
    String name,
    String image,
    String url,
    List<String> types,
    int weight,
    int height,
  ) : super(
          height: height,
          name: name,
          image: image,
          types: types,
          weight: weight,
          url: url,
        );

  factory PokemonDetailsModel.fromJson(
    Map<String, dynamic> json,
    String url,
  ) =>
      PokemonDetailsModel(
        json['name'],
        json['image'],
        url,
        json['types'],
        json['weight'],
        json['height'],
      );

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{
      "name": name,
      "image": image,
      "url": url,
      "types": types,
      "weight": weight,
      "height": height,
    };
    return map;
  }
}
