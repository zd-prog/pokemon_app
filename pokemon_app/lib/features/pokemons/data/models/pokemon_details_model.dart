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

  factory PokemonDetailsModel.fromJson(
    Map<String, dynamic> json,
    String url,
  ) =>
      PokemonDetailsModel(
        json['name'],
        json['front_default'],
        url,
        json['types'],
        json['weight'],
        json['height'],
      );

  Map<String, dynamic> toJson() {
    String typesString = "";
    for (var element in types) {
      typesString += '$element ';
    }
    var map = <String, dynamic>{
      "name": name,
      "image": image,
      "url": url,
      "types": typesString,
      "weight": weight,
      "height": height,
    };
    return map;
  }
}
