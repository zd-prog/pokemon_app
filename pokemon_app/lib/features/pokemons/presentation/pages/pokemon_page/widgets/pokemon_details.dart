import 'package:flutter/material.dart';

class PokemonDetails extends StatelessWidget {
  final String types;
  final double height;
  final double width;

  const PokemonDetails({
    super.key,
    required this.types,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 50,
          ),
          child: Text(
            'Types: $types',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 30,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 50,
          ),
          child: Text(
            'Height: $height',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 40,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 50,
          ),
          child: Text(
            'Width: $width',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 40,
            ),
          ),
        ),
      ],
    );
  }
}
