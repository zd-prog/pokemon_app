import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokemon_app/core/error/exception.dart';
import 'package:pokemon_app/features/pokemons/data/models/pokemon_details_model.dart';
import 'package:pokemon_app/features/pokemons/data/models/pokemon_model.dart';

abstract class PokemonRemoteDatasource {
  Future<List<PokemonModel>> getPokemons();

  Future<PokemonDetailsModel> getPokemonDetails(String url);
}

class PokemonRemoteDatasourceImpl implements PokemonRemoteDatasource {
  final http.Client client;

  PokemonRemoteDatasourceImpl(this.client);

  @override
  Future<PokemonDetailsModel> getPokemonDetails(String url) {
    // TODO: implement getPokemonDetails
    throw UnimplementedError();
  }

  @override
  Future<List<PokemonModel>> getPokemons() async {
    final response = await client.get(
      Uri.parse(
        'https://pokeapi.co/api/v2/pokemon',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var pokemons = json
          .decode(response.body)['results']
          .map<PokemonModel>((data) => PokemonModel.fromJson(data))
          .toList();
      return pokemons;
    } else {
      throw ServerException();
    }
  }
}
