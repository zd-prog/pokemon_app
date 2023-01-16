import 'package:dartz/dartz.dart';

import 'package:pokemon_app/core/error/failure.dart';
import 'package:pokemon_app/features/pokemons/domain/entities/pokemon.dart';
import 'package:pokemon_app/features/pokemons/domain/entities/pokemon_details.dart';

abstract class PokemonRepository {
  Future<Either<Failure, List<Pokemon>>> getPokemons();
  Future<Either<Failure, PokemonDetails>> getPokemonDetails(String url);
}
