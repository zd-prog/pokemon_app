import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pokemon_app/features/pokemons/data/models/pokemon_details_model.dart';
import 'package:pokemon_app/features/pokemons/data/models/pokemon_model.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _db;
  static const String name = 'name';
  static const String url = 'url';
  static const String image = 'image';
  static const String types = 'types';
  static const String weight = 'weight';
  static const String height = 'height';
  static const String pokemonsTable = 'pokemonsTable';
  static const String pokemonDetailsTable = 'pokemonDetailsTable';
  static const String dbName = 'pokemons.db';

  Future<Database?> get db async {
    if (null != _db) {
      return _db;
    }
    _db = await initDB();
    return _db;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, dbName);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE $pokemonsTable ($name TEXT , $url TEXT)',
    );
    await db.execute(
      'CREATE TABLE $pokemonDetailsTable ($name TEXT, $url TEXT, $types TEXT, $weight INTEGER ,$height INTEGER, $image TEXT)',
    );
  }

  Future<PokemonModel> savePokemon(PokemonModel pokemonModel) async {
    var dbClient = await db;
    await dbClient!.insert(
      pokemonsTable,
      pokemonModel.toJson(),
    );
    return pokemonModel;
  }

  Future<PokemonDetailsModel> savePokemonDetails(
      PokemonDetailsModel pokemonDetailsModel) async {
    var dbClient = await db;
    await dbClient!.insert(
      pokemonDetailsTable,
      pokemonDetailsModel.toJson(),
    );
    return pokemonDetailsModel;
  }

  Future<List<PokemonModel>> getPokemons() async {
    var dbClient = await db;
    List<Map> maps = await dbClient!.query(pokemonsTable, columns: [
      name,
      url,
    ]);
    List<PokemonModel> pokemons = [];
    if (maps.isNotEmpty) {
      for (int i = 0; i < maps.length; i++) {
        pokemons.add(PokemonModel.fromJson(Map<String, dynamic>.from(maps[i])));
      }
    }
    return pokemons;
  }

  Future<List<PokemonDetailsModel>> getPokemonDetails(String url) async {
    var dbClient = await db;
    List<Map> maps = await dbClient!.query(pokemonDetailsTable, columns: [
      name,
      url,
      image,
      types,
      weight,
      height,
    ]);
    List<PokemonDetailsModel> pokemonDetails = [];
    if (maps.isNotEmpty) {
      for (int i = 0; i < maps.length; i++) {
        pokemonDetails.add(PokemonDetailsModel.fromJson(
          Map<String, dynamic>.from(maps[i]),
          url,
        ));
      }
    }
    return pokemonDetails;
  }

  Future close() async {
    var dbClient = await db;
    dbClient!.close();
  }
}
