import 'package:flutter/material.dart';

class TypeBox extends StatelessWidget {
  final type;

  const TypeBox({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: pokemonType[type],
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: pokemonType[type] ?? Colors.black,
              offset: const Offset(1, 1),
              blurRadius: 6,
            )
          ]),
      margin: const EdgeInsets.only(right: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          type,
          style: const TextStyle(fontFamily: 'Roboto', color: Colors.white),
        ),
      ),
    );
  }
}

final pokemonType = {
  'Grass': Colors.lightGreen,
  'Poison': Colors.deepPurple,
  'Ghost': Colors.grey,
  'Fairy': Colors.pink[300],
  'Psychic': Colors.pink,
  'Bug': Colors.lime,
  'Flying': Colors.lightBlueAccent[100]
};
