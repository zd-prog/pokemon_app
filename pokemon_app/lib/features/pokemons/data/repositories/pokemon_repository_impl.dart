import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/error/failure.dart';
import 'package:pokemon_app/core/platform/network_info.dart';
import 'package:pokemon_app/features/pokemons/data/datasources/pokemon_local_datasource.dart';
import 'package:pokemon_app/features/pokemons/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokemon_app/features/pokemons/domain/entities/pokemon.dart';
import 'package:pokemon_app/features/pokemons/domain/entities/pokemon_details.dart';
import 'package:pokemon_app/features/pokemons/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonRemoteDatasource remoteDatasource;
  final PokemonLocalDatasource localDatasource;
  final NetworkInfo networkInfo;

  PokemonRepositoryImpl(
    this.remoteDatasource,
    this.localDatasource,
    this.networkInfo,
  );

  @override
  Future<Either<Failure, PokemonDetails>> getPokemonDetails(String url) {
    // TODO: implement getPokemonDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Pokemon>>> getPokemons() {
    // TODO: implement getPokemons
    throw UnimplementedError();
  }
}
