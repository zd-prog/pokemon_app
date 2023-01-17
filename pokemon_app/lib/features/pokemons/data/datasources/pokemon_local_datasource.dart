import 'package:pokemon_app/features/pokemons/data/database/db_helper.dart';
import 'package:pokemon_app/features/pokemons/data/models/pokemon_details_model.dart';
import 'package:pokemon_app/features/pokemons/data/models/pokemon_model.dart';

abstract class PokemonLocalDatasource {
  Future<List<PokemonModel>> getPokemons();
  Future<PokemonDetailsModel> getPokemonDetails(String url);

  Future<void> cachePokemons(List<PokemonModel> pokemonsToCache);
  Future<void> cachePokemonDetails(PokemonDetailsModel pokemonDetailsToCache);
}

class PokemonLocalDatasourceImpl implements PokemonLocalDatasource {
  final DBHelper dbHelper;

  const PokemonLocalDatasourceImpl(this.dbHelper);

  @override
  Future<void> cachePokemonDetails(
      PokemonDetailsModel pokemonDetailsToCache) async {
    dbHelper.savePokemonDetails(pokemonDetailsToCache);
  }

  @override
  Future<void> cachePokemons(List<PokemonModel> pokemonsToCache) async {
    for (var element in pokemonsToCache) {
      dbHelper.savePokemon(element);
    }
  }

  @override
  Future<PokemonDetailsModel> getPokemonDetails(String url) async {
    return await dbHelper.getPokemonDetails(url);
  }

  @override
  Future<List<PokemonModel>> getPokemons() async {
    return await dbHelper.getPokemons();
  }
}
