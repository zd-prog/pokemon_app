import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pokemon_app/core/error/failure.dart';
import 'package:pokemon_app/features/pokemons/domain/entities/pokemon_details.dart';
import 'package:pokemon_app/features/pokemons/domain/repositories/pokemon_repository.dart';
import 'package:pokemon_app/features/pokemons/domain/usecases/usecase.dart';

class GetDetails extends UseCase<PokemonDetails, Params> {
  final PokemonRepository repository;

  GetDetails(this.repository);

  @override
  Future<Either<Failure, PokemonDetails>> call(Params params) async {
    return repository.getPokemonDetails(params.url);
  }
}

class Params extends Equatable {
  final String url;

  const Params(this.url);

  @override
  List<Object?> get props => [
        url,
      ];
}
