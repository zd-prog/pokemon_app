import 'package:pokemon_app/features/pokemons/data/models/pokemon_details_model.dart';
import 'package:pokemon_app/features/pokemons/data/models/pokemon_model.dart';

abstract class PokemonRemoteDatasource {
  Future<List<PokemonModel>> getPokemons();

  Future<PokemonDetailsModel> getPokemonDetails(String url);
}
