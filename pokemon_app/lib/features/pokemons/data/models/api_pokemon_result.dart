import 'package:equatable/equatable.dart';

class ApiPokemonResult extends Equatable {
  final String name;
  final String url;

  const ApiPokemonResult(
    this.name,
    this.url,
  );

  factory ApiPokemonResult.fromJson(Map<String, dynamic> json) =>
      ApiPokemonResult(
        json['name'],
        json['url'],
      );

  @override
  List<Object?> get props => [
        name,
        url,
      ];
}
