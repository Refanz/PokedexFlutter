import 'package:flutter/material.dart';
import 'package:pokeverse/model/pokemon.dart';

class FavoriteButton extends StatefulWidget {
  final Pokemon pokemon;

  const FavoriteButton({Key? key, required this.pokemon}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState( pokemon: pokemon);
}

class _FavoriteButtonState extends State<FavoriteButton> {
  final Pokemon pokemon;

  _FavoriteButtonState({required this.pokemon});

  @override
  Widget build(BuildContext context) {

    bool isFavorite = pokemon.isFavorited;

    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          pokemon.isFavorited = !pokemon.isFavorited;
        });
      },
    );
  }
}