import 'package:pokemon_app/features/pokemons/data/models/pokemon_details_model.dart';
import 'package:pokemon_app/features/pokemons/domain/entities/pokemon_details.dart';

abstract class PokemonLocalDatasource {
  Future<List<PokemonDetailsModel>> getPokemons();

  Future<void> cachePokemons(List<PokemonDetails> pokemonsToCache);
}
