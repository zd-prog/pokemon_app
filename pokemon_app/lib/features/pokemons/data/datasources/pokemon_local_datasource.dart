import 'package:pokemon_app/features/pokemons/data/models/pokemon_details_model.dart';
import 'package:pokemon_app/features/pokemons/data/models/pokemon_model.dart';

abstract class PokemonLocalDatasource {
  Future<List<PokemonModel>> getPokemons();
  Future<PokemonDetailsModel> getPokemonDetails(String id);

  Future<void> cachePokemons(List<PokemonModel> pokemonsToCache);
  Future<void> cachePokemonDetails(PokemonDetailsModel pokemonDetailsToCache);
}
