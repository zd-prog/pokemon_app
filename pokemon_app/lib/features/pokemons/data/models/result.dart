import 'package:equatable/equatable.dart';

class ApiResult extends Equatable {
  final String name;
  final String url;

  const ApiResult(
    this.name,
    this.url,
  );

  factory ApiResult.fromJson(Map<String, dynamic> json) => ApiResult(
        json['name'],
        json['url'],
      );

  @override
  List<Object?> get props => [
        name,
        url,
      ];
}
