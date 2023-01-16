import 'package:equatable/equatable.dart';

class PokemonDetails extends Equatable {
  final String name;
  final String image;
  final List<String> types;
  final double weight;
  final double height;

  const PokemonDetails({
    required this.name,
    required this.image,
    required this.types,
    required this.height,
    required this.weight,
  });

  @override
  List<Object?> get props => [
        name,
        image,
        types,
        weight,
        height,
      ];
}
