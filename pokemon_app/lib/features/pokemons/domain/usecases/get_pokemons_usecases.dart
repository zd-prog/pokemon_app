import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/error/failure.dart';
import 'package:pokemon_app/features/pokemons/domain/entities/pokemon.dart';
import 'package:pokemon_app/features/pokemons/domain/repositories/pokemon_repository.dart';
import 'package:pokemon_app/features/pokemons/domain/usecases/usecase.dart';

class GetPokemons extends UseCase<List<Pokemon>, NoParams> {
  final PokemonRepository repository;

  GetPokemons(this.repository);

  @override
  Future<Either<Failure, List<Pokemon>>> call(NoParams params) async {
    return await repository.getPokemons();
  }
}
