import 'package:dartz/dartz.dart';
import 'package:pokemon_app/core/error/exception.dart';
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
  Future<Either<Failure, PokemonDetails>> getPokemonDetails(String url) async {
    if (await networkInfo.isConnected) {
      try {
        final remotePokemonDetails =
            await remoteDatasource.getPokemonDetails(url);
        localDatasource.cachePokemonDetails(remotePokemonDetails);
        return Right(remotePokemonDetails);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localPokemonDetails =
            await localDatasource.getPokemonDetails(url);
        return Right(localPokemonDetails);
      } on CacheException {
        return Left(
          CacheFailure(),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<Pokemon>>> getPokemons() async {
    if (await networkInfo.isConnected) {
      try {
        final remotePokemons = await remoteDatasource.getPokemons();
        localDatasource.cachePokemons(remotePokemons);
        return Right(remotePokemons);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localPokemons = await localDatasource.getPokemons();
        return Right(localPokemons);
      } on CacheException {
        return Left(
          CacheFailure(),
        );
      }
    }
  }
}
