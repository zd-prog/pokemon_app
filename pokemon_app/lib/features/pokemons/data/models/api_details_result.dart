import 'package:equatable/equatable.dart';

class ApiDetailsResult extends Equatable {
  final String name;
  final String image;
  final List<String> types;
  final double weight;
  final double height;

  const ApiDetailsResult(
    this.name,
    this.image,
    this.types,
    this.weight,
    this.height,
  );

  factory ApiDetailsResult.fromJson(Map<String, dynamic> json) =>
      ApiDetailsResult(
        json['name'],
        json['front_default'],
        json['types'],
        json['weight'],
        json['height'],
      );

  @override
  List<Object?> get props => [
        name,
        image,
        types,
        weight,
        height,
      ];
}
