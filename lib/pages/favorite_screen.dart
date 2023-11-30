import 'package:flutter/material.dart';
import 'package:pokeverse/model/pokemon.dart';

import '../components/pokemon_grid.dart';
import '../components/pokemon_list.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final favPokemon = pokemonList.where((pokemon) => pokemon.isFavorited == true).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Pokemons',
            style: TextStyle(color: Colors.white, fontFamily: 'Pokemon')),
        backgroundColor: Colors.white38,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 750) {
            return PokemonList(myPokemon: favPokemon);
          } else if (constraints.maxWidth <= 1200) {
            return PokemonGrid(myPokemon: favPokemon, gridCount: 4);
          } else {
            return PokemonGrid(myPokemon: favPokemon, gridCount: 6);
          }
        },
      ),
      backgroundColor: Colors.lightBlue[200],
    );
  }
}